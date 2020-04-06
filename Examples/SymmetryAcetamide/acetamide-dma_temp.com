%RWF=/scratch/bdw2292/Gau-acetamide/,100GB
%Nosave
%Chk=acetamide-dma_temp.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

acetamide Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 O    0.623443   -1.148810   -0.204080
 N    0.737117    1.103895    0.103461
 C   -1.453554    0.053453    0.078840
 C    0.051403   -0.079859   -0.011456
 H   -1.900046   -0.914035   -0.144499
 H   -1.751574    0.361882    1.085463
 H   -1.822381    0.800880   -0.628419
 H    1.741407    1.034601    0.201668
 H    0.291523    1.925628    0.484839

$nbo bndidx $end

