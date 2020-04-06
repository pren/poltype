%RWF=/scratch/bdw2292/Gau-ethene/,100GB
%Nosave
%Chk=ethene-dma_temp.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

ethene Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 C    0.000006    0.667513    0.000000
 C   -0.000006   -0.667513    0.000000
 H   -0.922879    1.237507    0.000000
 H    0.922902    1.237492    0.000000
 H    0.922878   -1.237508    0.000000
 H   -0.922900   -1.237492    0.000000

$nbo bndidx $end

