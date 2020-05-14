%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-2-3-7-8-335.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C   -0.468034    4.209213   -0.853962
 C    0.875037    4.177017   -0.453945
 C    1.638976    3.013560   -0.663518
 C    0.973800    1.936672   -1.299701
 N   -0.307872    1.947788   -1.688462
 C   -1.009091    3.069679   -1.461740
 C    3.070503    2.871226   -0.222878
 C    3.984690    3.915752   -0.026628
 C    5.263205    3.523726    0.390069
 N    5.634258    2.263297    0.607314
 C    4.684345    1.327206    0.400208
 N    3.441897    1.598540   -0.003524
 N    5.051155    0.010547    0.633174
 C    4.355938   -1.244673    0.455746
 C    5.093421   -2.467053    0.439138
 C    4.364330   -3.654455    0.249770
 C    2.976087   -3.701509    0.070897
 C    2.266877   -2.497109    0.104135
 C    2.965247   -1.295664    0.299555
 N    0.857644   -2.339036   -0.074808
 C   -0.123068   -3.223373   -0.455722
 C   -1.472680   -2.625420   -0.804424
 C   -1.604676   -1.383781   -1.449212
 C   -2.867017   -0.835605   -1.676588
 C   -4.037111   -1.497775   -1.262920
 C   -3.893561   -2.770587   -0.676982
 C   -2.634270   -3.342080   -0.475437
 C   -5.401714   -0.821005   -1.393046
 N   -5.818047    0.119546   -0.335579
 C   -5.195140    1.462466   -0.287761
 C   -3.977930    1.581018    0.665602
 N   -4.248129    1.123440    2.048500
 C   -4.917290    2.080155    2.937975
 C   -4.821189   -0.244051    1.999363
 C   -6.028135   -0.398653    1.036189
 O    0.055191   -4.430264   -0.500008
 C    6.601937   -2.532803    0.603636
 H   -1.082339    5.090252   -0.693255
 H    1.296936    5.047579    0.043180
 H    1.515772    1.017585   -1.510059
 H   -2.048745    3.052917   -1.785313
 H    3.750462    4.960320   -0.194229
 H    6.037008    4.272281    0.559090
 H    6.024181   -0.033161    0.896798
 H    4.895346   -4.605276    0.227989
 H    2.452749   -4.635803   -0.093047
 H    2.415447   -0.367430    0.324868
 H    0.538197   -1.386327    0.032703
 H   -0.717251   -0.833950   -1.753291
 H   -2.927484    0.142831   -2.152830
 H   -4.775048   -3.322343   -0.351095
 H   -2.528600   -4.323470   -0.019835
 H   -5.435796   -0.272035   -2.345296
 H   -6.175446   -1.600467   -1.449750
 H   -4.981629    1.815629   -1.270539
 H   -6.281961    2.439127    0.306845
 H   -3.592831    3.012334    0.711208
 H   -3.060169    0.977127    0.259573
 H   -5.936678    2.290335    2.595145
 H   -4.354902    3.020091    2.974682
 H   -4.964598    1.678363    3.956607
 H   -5.075012   -0.578117    3.031650
 H   -3.735410   -1.145000    1.494380
 H   -7.184412    0.456219    1.677757
 H   -6.397068   -1.482577    1.001485
 H    6.913073   -2.166235    1.592051
 H    7.116661   -1.922617   -0.152022
 H    6.999963   -3.552331    0.506625

8 7 3 2 F
12 7 3 2 F
8 7 3 4 F
12 7 3 4 F
14 13 11 12 F
14 13 11 10 F
15 14 13 11 F
19 14 13 11 F
19 18 20 21 F
17 18 20 21 F
22 21 20 18 F
36 21 20 18 F
20 21 22 23 F
36 21 22 23 F
36 21 22 27 F
20 21 22 27 F
29 28 25 24 F
29 28 25 26 F
25 28 29 35 F
25 28 29 30 F
