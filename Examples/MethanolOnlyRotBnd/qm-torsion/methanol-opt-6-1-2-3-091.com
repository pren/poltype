%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-091.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

methanol Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 O    0.734603    0.109477    0.003564
 C   -0.687383   -0.009337   -0.000564
 H   -1.030196   -0.028234    1.039971
 H   -0.963605   -0.922780   -0.539327
 H   -1.087688    0.869702   -0.518640
 H    1.111269   -0.784529   -0.001103


