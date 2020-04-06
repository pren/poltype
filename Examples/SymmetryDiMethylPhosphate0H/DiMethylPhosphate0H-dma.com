%RWF=/scratch/bdw2292/Gau-DiMethylPhosphate0H/,100GB
%Nosave
%Chk=DiMethylPhosphate0H-dma.chk
%Mem=20GB
%Nproc=4
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

DiMethylPhosphate0H Gaussian SP Calculation on node37.bme.utexas.edu

-1 1
 P    0.000035   -0.629986    0.000055
 O    0.968316    0.420820   -0.821276
 O   -0.968621    0.420458    0.821182
 O    0.786270   -1.353016    1.049788
 O   -0.785375   -1.353700   -1.049681
 C    1.798100    1.277578   -0.054213
 C   -1.798637    1.276947    0.054134
 H    1.197740    1.951334    0.569402
 H    2.393157    1.872277   -0.751518
 H    2.467037    0.700544    0.593441
 H   -2.466958    0.699641   -0.593946
 H   -1.198546    1.951275   -0.569128
 H   -2.394450    1.871070    0.751296

$nbo bndidx $end

