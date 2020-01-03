%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-229.chk
%Mem=700MB
%Nproc=1
#P opt=(,maxcycle=400) HF/6-311G* MaxDisk=100GB

methanol Rotatable Bond Optimization on node36.bme.utexas.edu

0 1
 O    0.744040    0.117436   -0.011866
 C   -0.685460   -0.012030    0.006810
 H   -1.100106    0.630015   -0.775874
 H   -1.044234    0.269210    1.001296
 H   -0.940267   -1.056931   -0.197375
 H    1.105040   -0.787102   -0.008725


