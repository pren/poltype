%RWF=/scratch/bdw2292/Gau-ammonia/,100GB
%Nosave
%Chk=ammonia-dma_temp.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

ammonia Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 N   -0.022968   -0.011930    0.063858
 H   -0.336675    0.884093   -0.300264
 H   -0.336662   -0.716065   -0.599197
 H    0.992458   -0.002267    0.012201

$nbo bndidx $end

