%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-22-21-20-18-028.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C    7.553923   -4.401225    1.630938
 C    7.543815   -3.017861    1.852364
 C    6.335118   -2.296271    1.770340
 C    5.181305   -3.062592    1.473211
 N    5.172898   -4.384853    1.263947
 C    6.342301   -5.035817    1.339349
 C    6.242596   -0.807269    1.996801
 C    7.320514    0.014005    2.368803
 C    7.020320    1.366251    2.556352
 N    5.812165    1.894727    2.394615
 C    4.839923    1.036791    2.018501
 N    5.016578   -0.272286    1.817652
 N    3.597514    1.622838    1.841295
 C    2.284231    1.126607    1.524515
 C    1.157676    1.964373    1.781485
 C   -0.105447    1.443567    1.466689
 C   -0.313252    0.177850    0.909288
 C    0.798017   -0.634488    0.642371
 C    2.076761   -0.142558    0.967925
 N    0.791261   -1.960041    0.071127
 C   -0.172776   -2.888598   -0.245577
 C   -1.581168   -2.477410   -0.613913
 C   -1.878559   -1.302186   -1.322509
 C   -3.203795   -0.939871   -1.568548
 C   -4.274383   -1.734132   -1.119081
 C   -3.960676   -2.939082   -0.461305
 C   -2.636986   -3.320149   -0.230313
 C   -5.723502   -1.275070   -1.284971
 N   -6.276324   -0.351910   -0.276318
 C   -5.863009    1.069397   -0.295344
 C   -4.654642    1.393422    0.621580
 N   -4.823781    0.953625    2.026621
 C   -5.575258    1.845010    2.916802
 C   -5.220761   -0.475684    2.038765
 C   -6.420985   -0.826436    1.119278
 O    0.085566   -4.079592   -0.222853
 C    1.256803    3.352107    2.392648
 H    8.475117   -4.973946    1.683535
 H    8.489523   -2.530889    2.076321
 H    4.208069   -2.586240    1.421308
 H    6.300369   -6.109289    1.163598
 H    8.330048   -0.342717    2.531782
 H    7.799378    2.066068    2.857515
 H    3.660864    2.602242    2.075519
 H   -0.992944    2.041437    1.672904
 H   -1.328498   -0.152819    0.746785
 H    2.949719   -0.750164    0.779144
 H    1.717088   -2.338492   -0.071779
 H   -1.066328   -0.668742   -1.670859
 H   -3.401206   -0.003507   -2.090389
 H   -4.759339   -3.584210   -0.096168
 H   -2.401325   -4.239516    0.299838
 H   -5.834783   -0.798021   -2.269196
 H   -6.376932   -2.159139   -1.306207
 H   -5.739184    1.408558   -1.273873
 H   -7.074934    1.900648    0.313671
 H   -4.497401    2.914762    0.609431
 H   -3.735149    0.964604    0.243984
 H   -6.625493    1.913862    2.611370
 H   -5.136537    2.849234    2.904788
 H   -5.530792    1.473777    3.947007
 H   -5.542661   -0.852316    3.362606
 H   -4.110919   -1.218063    1.635287
 H   -7.655734   -0.052912    1.738876
 H   -6.665356   -1.840966    1.143141
 H    1.801831    4.042312    1.733342
 H    1.784035    3.330485    3.357127
 H    0.275690    3.808570    2.583959

22 21 20 18 F
36 21 20 18 F
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
20 21 22 23 F
36 21 22 23 F
36 21 22 27 F
20 21 22 27 F
29 28 25 24 F
29 28 25 26 F
25 28 29 35 F
25 28 29 30 F
