%RWF=/scratch/bdw2292/Gau-DiMethylPhosphate1H/,100GB
%Nosave
%Chk=DiMethylPhosphate1H-dma_temp.chk
%Mem=20GB
%Nproc=4
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

DiMethylPhosphate1H Gaussian SP Calculation on bme-nova.bme.utexas.edu

0 1
 P   -0.040054    0.481391    0.075863
 O    1.017759   -0.469403    0.804340
 O   -0.971671   -0.520794   -0.760928
 O    0.785809    1.148629   -1.129987
 O   -0.709011    1.412268    0.993538
 C    1.805268   -1.385851    0.042810
 C   -1.890695   -1.330484   -0.023030
 H    1.166568   -2.069311   -0.525607
 H    2.401898   -1.949167    0.760655
 H    2.462805   -0.845030   -0.643440
 H   -2.558832   -0.703687    0.573513
 H   -1.353419   -2.022990    0.634000
 H   -2.464679   -1.893909   -0.758919
 H    0.643503    2.104149   -1.130693

$nbo bndidx $end

