%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-29-28-25-24-001.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C   -1.499485    0.222112    5.726114
 C   -0.253985   -0.320891    6.075569
 C    0.604375   -0.812977    5.072571
 C    0.117639   -0.699902    3.746177
 N   -1.062780   -0.181363    3.390326
 C   -1.858136    0.269506    4.372878
 C    1.972079   -1.394918    5.343384
 C    2.604297   -1.476514    6.594000
 C    3.902544   -2.002636    6.582770
 N    4.544398   -2.416660    5.491985
 C    3.854873   -2.318273    4.336216
 N    2.613353   -1.836785    4.245760
 N    4.507574   -2.752151    3.185780
 C    4.127672   -2.734532    1.790163
 C    5.112335   -2.898623    0.769767
 C    4.672207   -2.811242   -0.564619
 C    3.339645   -2.592557   -0.944029
 C    2.385869   -2.490158    0.071507
 C    2.794352   -2.564139    1.407533
 N    0.993174   -2.277240   -0.067647
 C   -0.009038   -3.134793   -0.446184
 C   -1.365284   -2.526611   -0.740086
 C   -1.550718   -1.265133   -1.326965
 C   -2.836180   -0.736101   -1.462988
 C   -3.977598   -1.474016   -1.095294
 C   -3.779054   -2.767915   -0.578255
 C   -2.495774   -3.286744   -0.396382
 C   -5.376834   -0.867911   -1.201094
 N   -5.883564   -0.011746   -0.114248
 C   -5.368995    1.370361    0.026524
 C   -4.274856    1.571024    1.109743
 N   -4.610549    1.030809    2.449104
 C   -5.502771    1.862366    3.267053
 C   -4.999873   -0.387494    2.278082
 C   -6.103550   -0.622996    1.216928
 O    0.153116   -4.340179   -0.521635
 C    6.586131   -3.110225    1.068383
 H   -2.178327    0.604841    6.482191
 H    0.019917   -0.351757    7.127436
 H    0.728768   -1.027155    2.914418
 H   -2.810943    0.690053    4.056468
 H    2.158897   -1.134786    7.520251
 H    4.465952   -2.086753    7.511924
 H    5.446458   -3.044646    3.411623
 H    5.401873   -2.909110   -1.367902
 H    3.046025   -2.530211   -1.984422
 H    2.044636   -2.488810    2.176547
 H    0.726814   -1.312116    0.072734
 H   -0.683578   -0.677280   -1.617333
 H   -2.947816    0.268387   -1.871173
 H   -4.632797   -3.370958   -0.269942
 H   -2.348173   -4.273417    0.036093
 H   -5.423875   -0.280424   -2.129760
 H   -6.103278   -1.685603   -1.314964
 H   -5.074975    1.758506   -0.915666
 H   -6.588459    2.251318    0.511459
 H   -3.998995    2.918738    1.224106
 H   -3.059207    0.892250    0.667906
 H   -6.488926    1.962744    2.800395
 H   -5.071162    2.860898    3.400828
 H   -5.628215    1.415197    4.260020
 H   -5.274551   -0.820690    3.262303
 H   -3.720733   -1.144733    1.767557
 H   -7.400213    0.019931    1.804903
 H   -6.325351   -1.882651    1.096156
 H    6.752298   -4.050238    1.613500
 H    6.993470   -2.295598    1.683668
 H    7.204854   -3.158778    0.161685

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
