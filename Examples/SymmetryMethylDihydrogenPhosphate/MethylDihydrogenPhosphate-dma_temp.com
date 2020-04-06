%RWF=/scratch/bdw2292/Gau-MethylDihydrogenPhosphate/,100GB
%Nosave
%Chk=MethylDihydrogenPhosphate-dma_temp.chk
%Mem=20GB
%Nproc=4
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

MethylDihydrogenPhosphate Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 P    0.419913    0.060155   -0.012430
 O   -0.950522    0.860595   -0.054200
 O    0.194925   -1.009264   -1.189076
 O    0.336845   -0.884886    1.297506
 O    1.620394    0.902291   -0.067180
 C   -2.206150    0.178552   -0.003221
 H   -2.971831    0.952438    0.051759
 H   -2.261020   -0.460625    0.882817
 H   -2.348355   -0.422099   -0.905343
 H    1.014857   -1.467467   -1.414667
 H    0.858354   -0.493738    2.011334

$nbo bndidx $end

