      program cmpt_wet

      implicit double precision(a-h,o-z)
      double precision value(50), weight(50), error(50),weight_err(50)
      
      open(10,file="property.input",status="old")
      rewind(10)
      read(10,*) num
      write(6,*) "num=",num
      do ii=1,num
      read(10,*)value(ii), error(ii),weight_err(ii)
      enddo
      close(10)
      do ii=1,num
      weight(ii)=weight_err(ii)*value(ii)/error(ii)
      enddo
      do ii=1,num
      write(6,*) weight(ii)
      enddo

      end
