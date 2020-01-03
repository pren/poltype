%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-271.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

methanol Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 O    0.733551    0.111894   -0.015564
 C   -0.687833   -0.012397    0.011833
 H   -1.044590   -0.065773   -1.022821
 H   -1.092392    0.854738    0.545382
 H   -0.940998   -0.935643    0.546243
 H    1.114463   -0.780318   -0.014573


