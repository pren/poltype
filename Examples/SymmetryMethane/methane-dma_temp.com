%RWF=/scratch/bdw2292/Gau-methane/,100GB
%Nosave
%Chk=methane-dma_temp.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

methane Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 C    0.000001   -0.000002    0.000000
 H   -0.363156    0.553415   -0.865344
 H   -0.363180   -1.026114   -0.046589
 H   -0.363158    0.472722    0.911933
 H    1.089480   -0.000004   -0.000000

$nbo bndidx $end

