%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-25-28-29-35-056.chk
%Mem=20GB
%Nproc=6
#P opt=(maxcycle=5,Loose) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C   -0.129773    4.569322   -1.114114
 C    1.207899    4.442276   -0.714267
 C    1.781363    3.163184   -0.568848
 C    0.931310    2.071911   -0.876726
 N   -0.345697    2.170980   -1.267697
 C   -0.861360    3.404943   -1.374561
 C    3.207317    2.931083   -0.130654
 C    4.166711    3.930261    0.097470
 C    5.435830    3.476853    0.474749
 N    5.761398    2.197429    0.637766
 C    4.772042    1.305965    0.419049
 N    3.532107    1.635563    0.045417
 N    5.112097   -0.025749    0.614534
 C    4.397277   -1.265981    0.429790
 C    5.119929   -2.495736    0.363654
 C    4.372990   -3.669213    0.159868
 C    2.980146   -3.695558    0.018977
 C    2.285047   -2.485719    0.110909
 C    3.002343   -1.297000    0.318920
 N    0.871228   -2.313311   -0.016305
 C   -0.124937   -3.183783   -0.392282
 C   -1.487752   -2.579913   -0.675072
 C   -1.642191   -1.312855   -1.262881
 C   -2.914061   -0.782243   -1.477611
 C   -4.076772   -1.501411   -1.142859
 C   -3.909013   -2.774747   -0.565026
 C   -2.638358   -3.314678   -0.345289
 C   -5.458682   -0.878611   -1.351469
 N   -5.982249    0.022001   -0.306234
 C   -7.421316    0.356478   -0.334846
 C   -7.743815    1.608760   -1.190303
 N   -6.947575    2.811504   -0.839620
 C   -7.468096    3.631696    0.261045
 C   -5.511272    2.452744   -0.765876
 C   -5.188197    1.205155    0.093831
 O    0.051389   -4.389216   -0.473787
 C    6.632335   -2.583855    0.474638
 H   -0.594440    5.544994   -1.221869
 H    1.770729    5.348590   -0.504907
 H    1.316257    1.059138   -0.827951
 H   -1.902294    3.460088   -1.689779
 H    3.981049    4.990315   -0.024769
 H    6.240763    4.188732    0.655946
 H    6.089736   -0.093855    0.854804
 H    4.892720   -4.624068    0.090324
 H    2.442692   -4.620168   -0.154100
 H    2.472432   -0.361072    0.390123
 H    0.558329   -1.364144    0.132369
 H   -0.765615   -0.731327   -1.538514
 H   -2.989209    0.212116   -1.917653
 H   -4.782008   -3.358894   -0.275499
 H   -2.516759   -4.299746    0.098271
 H   -5.453108   -0.329648   -2.304725
 H   -6.182389   -1.697982   -1.468156
 H   -8.152235   -0.717396   -0.799771
 H   -7.870065    0.644076    1.071662
 H   -8.779620    1.847789   -1.180286
 H   -7.361165    1.229201   -2.655859
 H   -7.439570    3.080918    1.208351
 H   -8.503728    3.926731    0.056036
 H   -6.874613    4.547097    0.365223
 H   -4.769740    3.583761   -0.222333
 H   -5.036719    2.179866   -2.155709
 H   -5.607407    1.577577    1.555561
 H   -4.241722    0.991980    0.133070
 H    6.981768   -2.254873    1.463443
 H    7.128552   -1.954592   -0.277694
 H    7.013833   -3.604032    0.329500

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
