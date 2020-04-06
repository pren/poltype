%RWF=/scratch/bdw2292/Gau-methylamine/,100GB
%Nosave
%Chk=methylamine-dma_temp.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

methylamine Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 N   -0.722894    0.000491    0.005516
 C    0.734079   -0.005874   -0.065371
 H    1.257777    0.081142    0.901898
 H    1.066421    0.821296   -0.700845
 H    1.066434   -0.933171   -0.543017
 H   -1.043528    0.855954    0.449082
 H   -1.043515   -0.762105    0.594602

$nbo bndidx $end

