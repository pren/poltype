%RWF=/scratch/bdw2292/Gau-water/,100GB
%Nosave
%Chk=water-opt.chk
%Mem=700MB
%Nproc=1
#P opt=(maxcycle=400) MP2/6-31G* Guess=INDO MaxDisk=100GB

water Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 O    1.023500   -0.100600   -0.009700
 H    0.744600    0.599400    0.599500
 H    1.991400   -0.065600    0.020700


