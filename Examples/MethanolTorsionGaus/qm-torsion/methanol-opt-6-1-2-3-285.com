%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-opt-6-1-2-3-285.chk
%Mem=700MB
%Nproc=1
#P opt=(,maxcycle=400) HF/6-311G* MaxDisk=100GB

methanol Rotatable Bond Optimization on node36.bme.utexas.edu

0 1
 O    0.743677    0.117767   -0.010310
 C   -0.685132   -0.011238    0.006815
 H   -1.017470   -0.313606   -0.990738
 H   -1.114973    0.948376    0.308510
 H   -0.947483   -0.783487    0.737067
 H    1.099999   -0.788804   -0.009590


