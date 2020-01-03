%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-241.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

methanol Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 O    0.733728    0.111755   -0.017167
 C   -0.688020   -0.013102    0.011959
 H   -1.086848    0.452584   -0.896052
 H   -1.051583    0.475303    0.922835
 H   -0.942805   -1.079253    0.030216
 H    1.117927   -0.778887   -0.013492


