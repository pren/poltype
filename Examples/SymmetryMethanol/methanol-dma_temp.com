%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-dma_temp.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

methanol Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 O    0.693690    0.037165    0.012584
 C   -0.729241    0.012777    0.004320
 H   -1.136719   -0.738656    0.691357
 H   -1.136708   -0.166886   -0.997879
 H   -1.053311    0.998093    0.337827
 H    1.000320   -0.834513   -0.282457

$nbo bndidx $end

