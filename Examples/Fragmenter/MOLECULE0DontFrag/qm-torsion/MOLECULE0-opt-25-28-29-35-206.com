%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-25-28-29-35-206.chk
%Mem=20GB
%Nproc=6
#P opt=(maxcycle=5,Loose) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C    0.051011    4.603150   -1.385684
 C    1.372181    4.468649   -0.936523
 C    1.916514    3.186200   -0.725224
 C    1.057160    2.098872   -1.021286
 N   -0.203836    2.204629   -1.458367
 C   -0.692919    3.442470   -1.627907
 C    3.325660    2.944454   -0.241587
 C    4.300572    3.931476   -0.027293
 C    5.555555    3.464614    0.380359
 N    5.854570    2.184162    0.582975
 C    4.849210    1.306997    0.379775
 N    3.620852    1.649584   -0.017751
 N    5.158004   -0.025784    0.610537
 C    4.416935   -1.253693    0.448217
 C    5.115040   -2.498841    0.418689
 C    4.346875   -3.660823    0.230873
 C    2.954914   -3.662148    0.080582
 C    2.281735   -2.437955    0.145493
 C    3.022152   -1.258573    0.324302
 N    0.869018   -2.246350    0.017771
 C   -0.137891   -3.112819   -0.337006
 C   -1.499549   -2.511033   -0.628470
 C   -1.670886   -1.258436   -1.242458
 C   -2.951312   -0.741332   -1.449227
 C   -4.102732   -1.463636   -1.083471
 C   -3.917164   -2.724684   -0.485107
 C   -2.640065   -3.247747   -0.268898
 C   -5.496889   -0.862427   -1.277740
 N   -6.043411    0.065436   -0.267400
 C   -5.420035    0.158182    1.072709
 C   -6.030329   -0.835910    2.093626
 N   -7.505533   -0.760709    2.227931
 C   -8.023614    0.265495    3.140885
 C   -8.128012   -0.820564    0.882462
 C   -7.512612    0.163444   -0.144989
 O    0.028077   -4.321125   -0.396560
 C    6.624327   -2.613990    0.545153
 H   -0.391545    5.581844   -1.546319
 H    1.945633    5.372249   -0.744633
 H    1.421069    1.081773   -0.924988
 H   -1.721112    3.503334   -1.981045
 H    4.138378    4.990046   -0.188999
 H    6.372416    4.165762    0.549237
 H    6.131937   -0.108604    0.860874
 H    4.847440   -4.627231    0.186341
 H    2.400921   -4.580761   -0.070478
 H    2.510027   -0.311237    0.372309
 H    0.568681   -1.290025    0.144997
 H   -0.800395   -0.675961   -1.536088
 H   -3.046586    0.247973   -1.896552
 H   -4.779998   -3.314626   -0.177334
 H   -2.505551   -4.222721    0.192712
 H   -5.515854   -0.324300   -2.236479
 H   -6.198820   -1.704675   -1.367708
 H   -4.423411    0.101431    1.011339
 H   -5.741648    1.590476    1.636360
 H   -5.425897   -0.557091    3.400432
 H   -5.709138   -2.087842    1.737483
 H   -7.800911    1.271876    2.768000
 H   -7.575809    0.148935    4.134366
 H   -9.109353    0.161169    3.249265
 H   -9.179324   -0.713480    0.966911
 H   -7.842815   -2.249463    0.325332
 H   -7.861358    1.561064    0.304259
 H   -8.124653   -0.056504   -1.426857
 H    6.972091   -2.260837    1.526061
 H    7.138704   -2.018424   -0.222408
 H    6.986507   -3.645486    0.435516

25 28 29 35 F
25 28 29 30 F
12 11 13 14 F
10 11 13 14 F
19 18 20 21 F
17 18 20 21 F
36 21 22 23 F
20 21 22 23 F
36 21 22 27 F
20 21 22 27 F
24 25 28 29 F
26 25 28 29 F
