%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-2-3-7-8-255.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C   -0.269765    4.312793   -0.733505
 C    1.086043    4.228648   -0.394426
 C    1.792100    3.042352   -0.658100
 C    1.081144    1.994383   -1.281212
 N   -0.212798    2.064955   -1.621076
 C   -0.868149    3.205402   -1.347997
 C    3.223793    2.854680   -0.277498
 C    4.316626    2.877079   -1.149834
 C    5.564398    2.705169   -0.538015
 N    5.745102    2.529762    0.770166
 C    4.624824    2.515212    1.524426
 N    3.390780    2.664630    1.040281
 N    4.804862    2.337934    2.886392
 C    3.880132    2.190234    3.986786
 C    4.347278    1.667818    5.230832
 C    3.409820    1.556859    6.272346
 C    2.058522    1.902497    6.149437
 C    1.613591    2.398612    4.919997
 C    2.530237    2.543946    3.866947
 N    0.269182    2.763200    4.594210
 C   -0.910186    2.602048    5.280409
 C   -2.192311    2.858066    4.512143
 C   -2.346448    2.525662    3.155475
 C   -3.538032    2.814676    2.487138
 C   -4.606651    3.456154    3.140445
 C   -4.444510    3.766005    4.505000
 C   -3.271481    3.444694    5.191744
 C   -5.875341    3.859278    2.387357
 N   -5.883909    5.126049    1.633390
 C   -5.157331    5.201358    0.346646
 C   -3.711920    5.748689    0.452047
 N   -3.603544    7.052666    1.143990
 C   -3.883100    8.251717    0.345646
 C   -4.298613    6.960060    2.451959
 C   -5.744169    6.398147    2.380155
 O   -0.952723    2.288034    6.458965
 C    5.785376    1.241158    5.470572
 H   -0.845180    5.209439   -0.523211
 H    1.574923    5.071951    0.088390
 H    1.584461    1.055681   -1.504620
 H   -1.918415    3.229918   -1.634387
 H    4.223513    3.026247   -2.219213
 H    6.474215    2.713852   -1.137690
 H    5.785357    2.211115    3.088525
 H    3.732938    1.169165    7.237802
 H    1.363009    1.776784    6.970426
 H    2.184427    2.918002    2.914610
 H    0.165759    3.145363    3.664515
 H   -1.533656    2.030035    2.629590
 H   -3.624988    2.549053    1.433511
 H   -5.244639    4.267587    5.048942
 H   -3.160193    3.670393    6.249242
 H   -6.131028    3.059428    1.677133
 H   -6.704549    3.912509    3.107859
 H   -5.211762    4.285530   -0.169876
 H   -5.934149    6.260379   -0.545512
 H   -3.210849    5.919012   -0.977347
 H   -3.011141    4.989206    0.999803
 H   -4.933387    8.281560    0.034670
 H   -3.248494    8.267904   -0.547762
 H   -3.663038    9.153161    0.928973
 H   -4.282380    8.015706    2.981209
 H   -3.497919    6.018885    3.299231
 H   -6.574025    7.481958    1.598431
 H   -6.200432    6.311061    3.382164
 H    6.474585    2.094128    5.393768
 H    6.108540    0.488075    4.738113
 H    5.941566    0.798184    6.463876

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

