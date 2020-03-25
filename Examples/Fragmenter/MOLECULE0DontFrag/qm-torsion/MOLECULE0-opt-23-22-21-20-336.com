%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-23-22-21-20-336.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C   -0.168663    0.877823   -7.330756
 C    1.188196    0.527550   -7.312334
 C    1.694612   -0.282495   -6.275559
 C    0.748516   -0.704428   -5.309361
 N   -0.550277   -0.380399   -5.309874
 C   -0.992910    0.400517   -6.306122
 C    3.143256   -0.693309   -6.172371
 C    4.143350   -0.367659   -7.103091
 C    5.423377   -0.850867   -6.814281
 N    5.729833   -1.567752   -5.737807
 C    4.710497   -1.824802   -4.890926
 N    3.451382   -1.416340   -5.076271
 N    5.057626   -2.562992   -3.769623
 C    4.315196   -3.119732   -2.666665
 C    4.920890   -4.133999   -1.863796
 C    4.161739   -4.650051   -0.800687
 C    2.862688   -4.230300   -0.494736
 C    2.284731   -3.230087   -1.283857
 C    3.017427   -2.693871   -2.356661
 N    0.964434   -2.696843   -1.119740
 C   -0.077556   -3.092401   -0.312925
 C   -1.456889   -2.500682   -0.543611
 C   -1.694193   -1.263241   -1.165592
 C   -2.998347   -0.808660   -1.370507
 C   -4.112598   -1.560880   -0.955207
 C   -3.864174   -2.791836   -0.319405
 C   -2.562816   -3.257888   -0.118773
 C   -5.534664   -1.028295   -1.134963
 N   -6.082267   -0.098060   -0.130880
 C   -5.607512    1.303825   -0.120721
 C   -4.441751    1.582977    0.862665
 N   -4.709591    1.154076    2.254926
 C   -5.497344    2.071049    3.087079
 C   -5.137163   -0.266251    2.248314
 C   -6.285051   -0.583029    1.253899
 O    0.081736   -3.895722    0.593446
 C    6.318599   -4.676693   -2.109068
 H   -0.577969    1.505388   -8.116946
 H    1.825369    0.906873   -8.107324
 H    1.054837   -1.355454   -4.498435
 H   -2.053044    0.646940   -6.281561
 H    3.971950    0.208693   -8.003781
 H    6.252718   -0.647318   -7.490989
 H    6.035246   -2.807269   -3.822212
 H    4.588261   -5.429042   -0.169908
 H    2.309840   -4.663601    0.329773
 H    2.582463   -1.924295   -2.974715
 H    0.748192   -1.946324   -1.758830
 H   -0.859017   -0.649020   -1.490762
 H   -3.143526    0.155838   -1.857420
 H   -4.696399   -3.399398    0.035554
 H   -2.383483   -4.210891    0.372528
 H   -5.595211   -0.524059   -2.110454
 H   -6.223985   -1.884047   -1.179001
 H   -5.400649    1.638489   -1.103885
 H   -6.809604    2.182780    0.403082
 H   -4.207578    3.055592    0.859004
 H   -3.457296    1.063529    0.510494
 H   -6.519340    2.170660    2.704793
 H   -5.028290    3.061357    3.106845
 H   -5.541581    1.701365    4.117932
 H   -5.384208   -0.579719    3.269239
 H   -3.932098   -1.079133    1.806431
 H   -7.546575    0.170898    1.822157
 H   -6.539341   -1.699709    1.252921
 H    7.080642   -3.896096   -1.973471
 H    6.424603   -5.068539   -3.130401
 H    6.585954   -5.498344   -1.430321

20 21 22 23 F
36 21 22 23 F
36 21 22 27 F
20 21 22 27 F
14 13 11 12 F
14 13 11 10 F
15 14 13 11 F
19 14 13 11 F
19 18 20 21 F
17 18 20 21 F
22 21 20 18 F
36 21 20 18 F
29 28 25 24 F
29 28 25 26 F
25 28 29 35 F
25 28 29 30 F

