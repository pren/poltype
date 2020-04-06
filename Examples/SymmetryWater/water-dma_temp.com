%RWF=/scratch/bdw2292/Gau-water/,100GB
%Nosave
%Chk=water-dma_temp.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

water Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 O   -0.054497    0.038535    0.000000
 H    0.873105    0.317390    0.000000
 H   -0.008204   -0.928968    0.000000

$nbo bndidx $end

