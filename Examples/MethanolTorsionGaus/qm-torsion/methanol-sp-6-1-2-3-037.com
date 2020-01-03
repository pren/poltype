%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-037.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311++G(2d,2p) SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB SCRF=(PCM)

methanol Rotatable Bond SP Calculation on node36.bme.utexas.edu

0 1
 O    0.746523    0.108800   -0.141638
 C   -0.678419   -0.014866   -0.028522
 H   -0.911783   -0.582276    0.877494
 H   -1.054892   -0.511122   -0.927909
 H   -1.096086    0.994047    0.045919
 H    1.120373   -0.732715    0.175836

