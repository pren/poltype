%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-25-28-29-35-216.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C   -0.256552   -2.010095   -7.103278
 C    1.132502   -2.010803   -6.918794
 C    1.673842   -2.150663   -5.624572
 C    0.731124   -2.300108   -4.577429
 N   -0.598093   -2.300303   -4.735407
 C   -1.076458   -2.155407   -5.979295
 C    3.155774   -2.138373   -5.339010
 C    4.164298   -2.024217   -6.310237
 C    5.476501   -2.016420   -5.826857
 N    5.804240   -2.099678   -4.541348
 C    4.771996   -2.198672   -3.676802
 N    3.484980   -2.219621   -4.034181
 N    5.135459   -2.274785   -2.341154
 C    4.401278   -2.459075   -1.115724
 C    5.105514   -2.853362    0.063394
 C    4.351513   -3.024830    1.236582
 C    2.965389   -2.846453    1.305898
 C    2.296464   -2.454163    0.143468
 C    3.017117   -2.261296   -1.043481
 N    0.900192   -2.247286    0.043150
 C   -0.100929   -3.139697   -0.255068
 C   -1.479356   -2.589035   -0.556082
 C   -1.691769   -1.377981   -1.234017
 C   -2.988716   -0.907982   -1.450290
 C   -4.113979   -1.631359   -1.012222
 C   -3.886160   -2.853607   -0.350957
 C   -2.592893   -3.336871   -0.140156
 C   -5.528384   -1.079208   -1.195088
 N   -6.050433   -0.119124   -0.205253
 C   -5.552397    1.274359   -0.226126
 C   -4.366169    1.546012    0.734524
 N   -4.621532    1.146286    2.138119
 C   -5.375892    2.094365    2.966591
 C   -5.082076   -0.263732    2.162476
 C   -6.250750   -0.573926    1.190132
 O    0.087208   -4.343708   -0.255886
 C    6.603397   -3.104625    0.101480
 H   -0.693136   -1.898870   -8.091258
 H    1.764531   -1.888740   -7.794957
 H    1.067950   -2.440556   -3.556567
 H   -2.160959   -2.161083   -6.073898
 H    3.978199   -1.948585   -7.374307
 H    6.315446   -1.934388   -6.517282
 H    6.141879   -2.278824   -2.269287
 H    4.855055   -3.334586    2.151687
 H    2.416471   -3.014910    2.223995
 H    2.491530   -1.965602   -1.937531
 H    0.633005   -1.277364    0.138593
 H   -0.837420   -0.810302   -1.593558
 H   -3.120700    0.041457   -1.968888
 H   -4.727870   -3.442037    0.013508
 H   -2.423601   -4.282109    0.369555
 H   -5.588711   -0.596397   -2.181142
 H   -6.232915   -1.923145   -1.218701
 H   -5.357242    1.589744   -1.216443
 H   -6.730317    2.182703    0.303745
 H   -4.107106    3.021501    0.702559
 H   -3.419154    1.019038    0.385491
 H   -6.403246    2.205736    2.601854
 H   -4.888489    3.075960    2.957414
 H   -5.406883    1.745872    4.005428
 H   -5.333848   -0.556836    3.213457
 H   -3.915789   -1.103561    1.732167
 H   -7.487638    0.225909    1.760011
 H   -6.529518   -1.659469    1.211960
 H    7.170398   -2.186345   -0.107360
 H    6.903620   -3.855815   -0.642830
 H    6.951111   -3.475554    1.075587

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
