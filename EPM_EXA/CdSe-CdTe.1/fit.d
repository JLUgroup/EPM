3		! Number of structures
SQS8.CdSe25Te75.config
14 32 38                   ! n1,n2,n3,Ecut,smth for structure 1
input.SQS8.CdSe25Te75       ! input experimental values  and weights
0, 9,  ug.input            ! iproj,ipcbm,f_input: iproj:0 ignore;1,2 see below
1.000, 0.0, 0.0            ! some material the X-point is not exactly at (1,0,0)
-----------------------------------
SQS8.CdSe50Te50.config
14 24 48                   ! n1,n2,n3,Ecut,smth for structure 1
input.SQS8.CdSe50Te50       ! input experimental values  and weights
0, 9,  ug.input            ! iproj,ipcbm,f_input: iproj:0 ignore;1,2 see below
1.000, 0.0, 0.0            ! some material the X-point is not exactly at (1,0,0)
-----------------------------------
SQS8.CdSe75Te25.config
14 32 38                   ! n1,n2,n3,Ecut,smth for structure 1
input.SQS8.CdSe75Te25       ! input experimental values  and weights
0, 9,  ug.input            ! iproj,ipcbm,f_input: iproj:0 ignore;1,2 see below
1.000, 0.0, 0.0            ! some material the X-point is not exactly at (1,0,0)
-----------------------------------
2		! No. of pseudo files
pseudo.CdSe.fit
pseudo.CdTe.fit
-----------------------------------
1               ! Spin-Orbit (0 => OFF, 1=> ON)
-----------------------------------
0         ! Fit kinetic energy scaling ( 0=> Fixed, 1=> Fit)
1.0             ! Kinetic energy scaling factor
6.88, 0.8       ! Ecut, Smth

