%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-061.chk
%Mem=20GB
%Nproc=4
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB

methanol Rotatable Bond SP Calculation on bme-nova.bme.utexas.edu

0 1
 O    0.738481    0.125130   -0.000114
 C   -0.681568   -0.010436   -0.000023
 H   -0.976927   -0.546843    0.908780
 H   -0.976991   -0.547413   -0.908468
 H   -1.106892    0.999707   -0.000325
 H    1.122852   -0.765743    0.000152

