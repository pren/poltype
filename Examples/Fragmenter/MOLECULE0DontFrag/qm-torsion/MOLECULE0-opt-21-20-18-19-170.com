%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-21-20-18-19-170.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C   -0.148879    4.505113   -1.262809
 C    1.186004    4.393900   -0.849382
 C    1.763953    3.121530   -0.668402
 C    0.921470    2.019425   -0.958530
 N   -0.352937    2.102778   -1.361799
 C   -0.873373    3.331497   -1.500381
 C    3.187265    2.907757   -0.212165
 C    4.139327    3.916885    0.002696
 C    5.408451    3.478903    0.398296
 N    5.740613    2.205202    0.590285
 C    4.757090    1.304157    0.384991
 N    3.518121    1.618588   -0.005123
 N    5.103029   -0.022005    0.609310
 C    4.395815   -1.268680    0.441076
 C    5.122303   -2.497360    0.412666
 C    4.380982   -3.676715    0.222505
 C    2.989937   -3.710055    0.063880
 C    2.290745   -2.500467    0.119664
 C    3.003391   -1.305833    0.306110
 N    0.878474   -2.332982   -0.026466
 C   -0.114370   -3.211025   -0.392059
 C   -1.471550   -2.609338   -0.705373
 C   -1.620908   -1.360218   -1.332110
 C   -2.890966   -0.827067   -1.554579
 C   -4.054244   -1.520180   -1.173071
 C   -3.891946   -2.786091   -0.577103
 C   -2.624414   -3.332614   -0.359405
 C   -5.435721   -0.887546   -1.345001
 N   -5.918858    0.043435   -0.307862
 C   -5.347019    1.407865   -0.244530
 C   -4.165839    1.572334    0.746596
 N   -4.459341    1.103846    2.121255
 C   -5.185060    2.035674    2.992501
 C   -4.983214   -0.282283    2.056281
 C   -6.155076   -0.478282    1.058238
 O    0.059599   -4.418109   -0.448672
 C    6.632698   -2.577753    0.552091
 H   -0.616858    5.475724   -1.397664
 H    1.743522    5.307375   -0.658186
 H    1.310678    1.009969   -0.884243
 H   -1.911887    3.374018   -1.824952
 H    3.948879    4.973007   -0.143969
 H    6.208045    4.199075    0.569792
 H    6.078724   -0.080198    0.860099
 H    4.903967   -4.631457    0.181253
 H    2.456307   -4.639823   -0.092807
 H    2.469875   -0.370485    0.349829
 H    0.564502   -1.379918    0.092628
 H   -0.741239   -0.789743   -1.621059
 H   -2.964456    0.159506   -2.011952
 H   -4.766098   -3.353890   -0.258958
 H   -2.506641   -4.304974    0.112141
 H   -5.457640   -0.343870   -2.300791
 H   -6.181036   -1.692708   -1.420386
 H   -5.126306    1.761511   -1.199116
 H   -6.491496    2.347431    0.321722
 H   -3.836290    3.019549    0.802690
 H   -3.199098    0.994611    0.361644
 H   -6.200033    2.214331    2.619900
 H   -4.654131    2.992836    3.048491
 H   -5.249715    1.628808    4.008349
 H   -5.258985   -0.625553    3.085244
 H   -3.854014   -1.145518    1.586909
 H   -7.356259    0.339359    1.660074
 H   -6.485943   -1.561501    1.015877
 H    6.964404   -2.210379    1.533595
 H    7.140654   -1.975790   -0.214772
 H    7.018619   -3.601889    0.453198

19 18 20 21 F
17 18 20 21 F
14 13 11 12 F
14 13 11 10 F
15 14 13 11 F
19 14 13 11 F
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
