        program bulk_CdSe

        implicit double precision (a-h,o-z)
        real*8 x_cat(3,4),x_ani(3,4)
        integer icat,icat2,iani,iani2

        parameter(Bohr=0.529177d0)
        parameter(a_Si=5.430d0)    !unit in A
        parameter(a_GaAs=5.65325)   !unit in A
        parameter(a_InAs=6.05830)   !unit in A
        parameter(a_CdSe=6.050d0)
        parameter(a_InP=5.8686d0)
        

        parameter(nc1=1)
        parameter(nc2=1)
        parameter(nc3=1)

c        icat1=49
c        icat2=31
c        iani=33
        icat=49015  !to distinguish two different position atom
        iani=15049   !

        icat2=31033
        iani2=33031
        icat3=49033

        x_ani(1,1)=0.
        x_ani(2,1)=0.
        x_ani(3,1)=0.

        x_ani(1,2)=0.5
        x_ani(2,2)=0.5
        x_ani(3,2)=0.

        x_ani(1,3)=0.5
        x_ani(2,3)=0.
        x_ani(3,3)=0.5

        x_ani(1,4)=0.
        x_ani(2,4)=0.5
        x_ani(3,4)=0.5

        do i=1,4
        x_cat(1,i)=x_ani(1,i)+0.25
        x_cat(2,i)=x_ani(2,i)+0.25
        x_cat(3,i)=x_ani(3,i)+0.25
        enddo
        
        do i=1,4 
        write(6,'(f8.5,2x,f8.5,2x,f8.5)') 
     &    x_ani(1,i), x_ani(2,i),x_ani(3,i)
        enddo

       do i=1,4
        write(6,'(f8.5,2x,f8.5,2x,f8.5)')
     &    x_cat(1,i), x_cat(2,i),x_cat(3,i)
        enddo

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccc r(Bohr)=0.529167(A) from text book, 
ccccc a_GaAs=5.65325(A)
ccccc a_InAs=6.05840(A)
c        alat_GaAs=10.6826
c        alat_GaAs=10.68330035698
c        alat_InAs=11.44893766996
        alat=a_InP/Bohr
        num=nc1*nc2*nc3*8

        num_cat1=0
        num_cat2=0
c        open(10,file="xatom.in_GaAs")
c        open(10,file="xatom.LCBB.Si.bulk")
c        open(10,file="xatom.LCBB.CdSe.bulk")
        open(10,file="xatom.LCBB.InP.bulk")
        rewind(10)
        write(10,99) num, alat, icat,icat2,iani2,iani   
        write(10,100) alat*nc1,0.,0.,  nc1*1.d0,0.,0.
        write(10,100) 0., alat*nc2,0., 0.,nc2*1.d0,0.
        write(10,100) 0., 0., alat*nc3,0.,0.,nc3*1.d0

c        open(11,file="xatom.in_InAs")
c        rewind(11)
c        write(11,*) num
c        write(11,100) alat_InAs*nc1,0.,0. ,nc1
c        write(11,100) 0., alat_InAs*nc2,0. ,nc2
c        write(11,100) 0., 0., alat_InAs*nc3 ,nc3

99      format(i8,1x,f12.7,2x,4(i6,1x))
100     format(3(F15.7,1x),,3(f10.4,1x))

        do i3=0,nc3-1
        do i2=0,nc2-1
        do i1=0,nc1-1

          do i=1,4
          x1=(x_ani(1,i)+i1)/nc1
          x2=(x_ani(2,i)+i2)/nc2
          x3=(x_ani(3,i)+i3)/nc3
          write(10,102)iani,x1,x2,x3,0.,1.,x1,x2,x3,0. !Si
c          write(11,102)iani,x1,x2,x3
          enddo

          do i=1,4
          x1=(x_cat(1,i)+i1)/nc1
          x2=(x_cat(2,i)+i2)/nc2
          x3=(x_cat(3,i)+i3)/nc3
c          write(10,102) icat2,x1,x2,x3 !Ga
          write(10,102) icat,x1,x2,x3,0.,1.,x1,x2,x3,0. !Si
          enddo


         enddo
         enddo
         enddo

102     format(i6,2x,3(F12.7,1x),2(f9.6,1x),,3(F12.7,1x),f12.5)
        close(10)
        close(11)

        stop
        end


        
        
