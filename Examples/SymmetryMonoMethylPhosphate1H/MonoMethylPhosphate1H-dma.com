%RWF=/scratch/bdw2292/Gau-MonoMethylPhosphate1H/,150GB
%Nosave
%Chk=MonoMethylPhosphate1H-dma.chk
%Mem=100GB
%Nproc=4
#P MP2/6-311G** Sp Density=MP2 MaxDisk=150GB

MonoMethylPhosphate1H Gaussian SP Calculation on node37.bme.utexas.edu

-1 1
 H   -0.328854    1.999463   -0.506558
 O   -0.510748    1.181984   -0.986846
 P   -0.494223   -0.068885    0.093317
 O    0.941986   -0.783698   -0.275542
 O   -1.541580   -1.052931   -0.319025
 O   -0.434458    0.519977    1.473210
 C    2.126645   -0.049106   -0.022784
 H    2.138173    0.889156   -0.591882
 H    2.970873   -0.665252   -0.341976
 H    2.231679    0.181891    1.042986

$nbo bndidx $end

