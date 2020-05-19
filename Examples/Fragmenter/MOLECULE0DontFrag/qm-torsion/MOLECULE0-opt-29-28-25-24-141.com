%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-29-28-25-24-141.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C   -1.088070   -8.271303   -4.214575
 C    0.307143   -8.153319   -4.185965
 C    0.925287   -7.197198   -3.351905
 C    0.048485   -6.411447   -2.562895
 N   -1.288860   -6.516876   -2.579055
 C   -1.838953   -7.426621   -3.393046
 C    2.423706   -7.011778   -3.288502
 C    3.340805   -7.805288   -4.002176
 C    4.690589   -7.491522   -3.828110
 N    5.135541   -6.505149   -3.059073
 C    4.188829   -5.783709   -2.420220
 N    2.873481   -6.004559   -2.507782
 N    4.706186   -4.754895   -1.645752
 C    4.151269   -3.779696   -0.746629
 C    5.028326   -3.107510    0.159216
 C    4.454242   -2.154876    1.015352
 C    3.091458   -1.839745    1.031000
 C    2.244426   -2.503781    0.136128
 C    2.787448   -3.466042   -0.732022
 N    0.839459   -2.275159    0.068663
 C   -0.206021   -3.132912   -0.180883
 C   -1.575279   -2.542603   -0.447517
 C   -1.766698   -1.334258   -1.136779
 C   -3.053946   -0.831891   -1.339304
 C   -4.191982   -1.523132   -0.882492
 C   -3.985144   -2.735850   -0.197127
 C   -2.701568   -3.247119    0.008483
 C   -5.597085   -0.949507   -1.073000
 N   -6.109667    0.039618   -0.108583
 C   -5.595610    1.426348   -0.159708
 C   -4.414900    1.706974    0.804903
 N   -4.685670    1.343082    2.215296
 C   -5.441214    2.316363    3.013460
 C   -5.158789   -0.061857    2.267495
 C   -6.324188   -0.381727    1.294958
 O   -0.061190   -4.343448   -0.162328
 C    6.522345   -3.373494    0.240771
 H   -1.581246   -8.996264   -4.855198
 H    0.881324   -8.810091   -4.834502
 H    0.446215   -5.677280   -1.871865
 H   -2.926399   -7.480037   -3.378975
 H    3.061647   -8.628297   -4.648179
 H    5.460217   -8.067705   -4.341356
 H    5.713432   -4.788106   -1.694410
 H    5.090849   -1.624205    1.722617
 H    2.695791   -1.106710    1.723874
 H    2.138477   -3.997823   -1.412890
 H    0.596530   -1.297573    0.150128
 H   -0.903747   -0.793247   -1.517098
 H   -3.169140    0.112603   -1.871214
 H   -4.836960   -3.299315    0.183096
 H   -2.550749   -4.192962    0.523110
 H   -5.650088   -0.490217   -2.070756
 H   -6.315238   -1.782363   -1.080737
 H   -5.387932    1.715203   -1.156267
 H   -6.764437    2.358672    0.335441
 H   -4.136373    3.174499    0.741386
 H   -3.456681    1.148136    0.468725
 H   -6.463627    2.427593    2.635114
 H   -4.945685    3.293422    2.986719
 H   -5.486786    1.992495    4.059549
 H   -5.419397   -0.330261    3.323734
 H   -3.992655   -0.926696    1.857015
 H   -7.552560    0.434489    1.834683
 H   -6.614412   -1.477964    1.339934
 H    7.031227   -3.093264   -0.692326
 H    6.731915   -4.436737    0.425105
 H    7.015593   -2.814512    1.047843

24 25 28 29 F
26 25 28 29 F
12 11 13 14 F
10 11 13 14 F
19 18 20 21 F
17 18 20 21 F
36 21 22 23 F
20 21 22 23 F
36 21 22 27 F
20 21 22 27 F
25 28 29 35 F
25 28 29 30 F
