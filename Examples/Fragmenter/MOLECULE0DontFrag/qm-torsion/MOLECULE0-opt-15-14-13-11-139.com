%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-15-14-13-11-139.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C    0.846697    3.727410   -3.587336
 C    2.056179    3.756806   -2.879645
 C    2.511861    2.598681   -2.219867
 C    1.683989    1.453430   -2.338160
 N    0.522275    1.407494   -3.003352
 C    0.119551    2.531630   -3.615240
 C    3.779713    2.544029   -1.404869
 C    4.675234    3.602585   -1.184212
 C    5.759873    3.314252   -0.345503
 N    5.972660    2.136237    0.237451
 C    5.058858    1.182136   -0.032115
 N    3.998352    1.352499   -0.822432
 N    5.242948   -0.049425    0.562710
 C    4.510384   -1.274098    0.420823
 C    5.212368   -2.512874    0.350169
 C    4.438710   -3.675513    0.197035
 C    3.042861   -3.674003    0.083625
 C    2.372421   -2.447598    0.151512
 C    3.112327   -1.270328    0.347692
 N    0.963530   -2.251413    0.005779
 C   -0.038884   -3.115399   -0.368240
 C   -1.392247   -2.509199   -0.684947
 C   -1.536551   -1.258247   -1.309155
 C   -2.806464   -0.731874   -1.551275
 C   -3.972349   -1.435965   -1.196696
 C   -3.812776   -2.695873   -0.587762
 C   -2.546353   -3.233345   -0.345618
 C   -5.357949   -0.824522   -1.409303
 N   -5.887303    0.105658   -0.394536
 C   -5.341494    1.479800   -0.322667
 C   -4.192214    1.665177    0.701536
 N   -4.520334    1.202988    2.070504
 C   -5.287111    2.128214    2.913863
 C   -5.019419   -0.192108    2.000165
 C   -6.155587   -0.413050    0.966993
 O    0.124622   -4.323733   -0.430748
 C    6.726393   -2.611641    0.414615
 H    0.474143    4.608845   -4.100732
 H    2.615040    4.688959   -2.850304
 H    1.985525    0.520937   -1.868588
 H   -0.825840    2.467059   -4.151824
 H    4.558634    4.592974   -1.606924
 H    6.498693    4.083569   -0.122208
 H    6.091724   -0.071757    1.108690
 H    4.939386   -4.640505    0.129486
 H    2.486377   -4.589946   -0.074588
 H    2.614358   -0.311552    0.392820
 H    0.664666   -1.294485    0.132141
 H   -0.652073   -0.701531   -1.612396
 H   -2.880234    0.246634   -2.025823
 H   -4.688541   -3.269296   -0.284921
 H   -2.431222   -4.205452    0.126978
 H   -5.359739   -0.288324   -2.369446
 H   -6.088847   -1.641151   -1.499081
 H   -5.088806    1.836656   -1.288060
 H   -6.512426    2.401583    0.197822
 H   -3.883684    3.117871    0.757034
 H   -3.230977    1.111733    0.358260
 H   -6.293510    2.287006    2.510449
 H   -4.774823    3.094809    2.978283
 H   -5.374833    1.727557    3.930430
 H   -5.315029   -0.528734    3.007369
 H   -3.862971   -1.039454    1.571753
 H   -7.389951    0.389710    1.528393
 H   -6.465426   -1.490349    0.921101
 H    7.099080   -2.375576    1.421226
 H    7.208705   -1.915788   -0.286207
 H    7.099634   -3.614417    0.164673

15 14 13 11 F
19 14 13 11 F
14 13 11 12 F
14 13 11 10 F
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

