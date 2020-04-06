%RWF=/scratch/bdw2292/Gau-water/,100GB
%Nosave
%Chk=water-opt.chk
%Mem=700MB
%Nproc=1
#P opt=(maxcycle=400) wB97X-D/6-31G* Guess=INDO MaxDisk=100GB

water Gaussian OPT Calculation on bme-nova.bme.utexas.edu

0 1
 O    2.536900   -0.155000    0.000000
 H    3.073900    0.155000    0.000000
 H    2.000000    0.155000    0.000000

