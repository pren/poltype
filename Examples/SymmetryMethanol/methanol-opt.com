%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt.chk
%Mem=700MB
%Nproc=1
#P opt=(maxcycle=400) wB97X-D/6-31G* Guess=INDO MaxDisk=100GB

methanol Gaussian OPT Calculation on bme-nova.bme.utexas.edu

0 1
 O    0.707900    0.000000    0.000000
 C   -0.707900    0.000000    0.000000
 H   -1.073200   -0.769000    0.685200
 H   -1.073100   -0.194700   -1.011300
 H   -1.063200    0.978600    0.331200
 H    0.993600   -0.880400   -0.298000

