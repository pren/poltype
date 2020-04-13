%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-2-3-7-8-059.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C   -0.335630    4.423753   -0.864278
 C    0.984871    4.305960   -0.411136
 C    1.690996    3.112041   -0.638022
 C    0.997415    2.073501   -1.299310
 N   -0.264329    2.172039   -1.737658
 C   -0.910008    3.329010   -1.522782
 C    3.101901    2.906033   -0.186759
 C    3.549129    2.986206    1.136813
 C    4.919572    2.763826    1.314907
 N    5.771508    2.487160    0.329743
 C    5.240867    2.422356   -0.910697
 N    3.949463    2.616827   -1.187729
 N    6.129581    2.131242   -1.933677
 C    5.987107    2.047661   -3.368025
 C    7.152211    2.082201   -4.193042
 C    6.957497    2.002880   -5.582937
 C    5.701166    1.898255   -6.191937
 C    4.571277    1.855054   -5.369419
 C    4.731355    1.931443   -3.976556
 N    3.214790    1.764848   -5.808039
 C    2.648210    1.845106   -7.057938
 C    1.138331    1.982097   -7.099185
 C    0.426033    2.726075   -6.143602
 C   -0.968855    2.743912   -6.158889
 C   -1.698586    2.043091   -7.136753
 C   -0.970243    1.366418   -8.134483
 C    0.427141    1.348093   -8.130249
 C   -3.224681    1.977092   -7.069375
 N   -3.849801    0.967520   -6.195755
 C   -3.838660    1.180126   -4.730356
 C   -2.666410    0.487807   -3.986722
 N   -2.549537   -0.963441   -4.268900
 C   -3.434859   -1.850340   -3.504585
 C   -2.508566   -1.168138   -5.736938
 C   -3.654001   -0.465835   -6.512081
 O    3.298298    1.790451   -8.089475
 C    8.561586    2.215391   -3.642287
 H   -0.903679    5.337212   -0.714481
 H    1.457467    5.143910    0.096914
 H    1.491811    1.122003   -1.484073
 H   -1.933464    3.375920   -1.891939
 H    2.897212    3.202642    1.975134
 H    5.358175    2.812235    2.311257
 H    7.063281    2.050540   -1.559608
 H    7.823728    2.031050   -6.243112
 H    5.592362    1.853622   -7.268851
 H    3.857724    1.918693   -3.341098
 H    2.549092    1.695862   -5.050999
 H    0.967799    3.270196   -5.373830
 H   -1.491766    3.294950   -5.377338
 H   -1.497001    0.818532   -8.915453
 H    0.985091    0.812675   -8.894263
 H   -3.603892    2.960555   -6.756330
 H   -3.615194    1.806201   -8.082891
 H   -3.917944    2.203910   -4.499926
 H   -5.145338    0.497516   -4.167293
 H   -2.890084    0.662887   -2.549758
 H   -1.667517    0.974875   -4.233609
 H   -4.485306   -1.679053   -3.765298
 H   -3.304148   -1.680674   -2.429794
 H   -3.187737   -2.898096   -3.710788
 H   -2.469837   -2.252718   -5.958129
 H   -1.219757   -0.569020   -6.216977
 H   -4.969882   -1.215000   -6.076631
 H   -3.547792   -0.613539   -7.633111
 H    8.836388    1.345014   -3.029946
 H    8.663494    3.109323   -3.010890
 H    9.323677    2.300657   -4.429077

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
