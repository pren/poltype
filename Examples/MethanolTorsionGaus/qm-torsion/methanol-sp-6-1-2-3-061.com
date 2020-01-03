%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-061.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311++G(2d,2p) SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB SCRF=(PCM)

methanol Rotatable Bond SP Calculation on node36.bme.utexas.edu

0 1
 O   -0.749250    0.136113   -0.000030
 C    0.677800   -0.009181    0.000008
 H    0.972816   -0.546122   -0.906516
 H    0.972770   -0.546105    0.906560
 H    1.115595    0.993894    0.000012
 H   -1.114285   -0.767013   -0.000031

