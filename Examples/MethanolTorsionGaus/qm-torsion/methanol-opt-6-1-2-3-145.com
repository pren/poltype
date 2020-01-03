%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-145.chk
%Mem=700MB
%Nproc=1
#P opt=(,maxcycle=400) HF/6-311G* MaxDisk=100GB

methanol Rotatable Bond Optimization on node36.bme.utexas.edu

0 1
 O    0.744476    0.116167    0.001264
 C   -0.685092   -0.010291   -0.000758
 H   -1.104541    0.805035    0.595898
 H   -0.955231   -0.990280    0.404098
 H   -1.025641    0.069817   -1.037896
 H    1.101688   -0.789942    0.001021


