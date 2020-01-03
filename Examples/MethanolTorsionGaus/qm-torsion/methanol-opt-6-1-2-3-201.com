%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-201.chk
%Mem=700MB
%Nproc=1
#P opt=(,maxcycle=400) HF/6-311G* MaxDisk=100GB

methanol Rotatable Bond Optimization on node36.bme.utexas.edu

0 1
 O    0.744106    0.116793    0.002611
 C   -0.685057   -0.010300   -0.002461
 H   -1.113538    0.924682   -0.375119
 H   -1.015931   -0.235742    1.015707
 H   -0.950924   -0.834874   -0.671704
 H    1.099730   -0.790039    0.004622


