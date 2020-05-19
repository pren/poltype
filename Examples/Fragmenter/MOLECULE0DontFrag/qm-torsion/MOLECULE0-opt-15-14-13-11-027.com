%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-15-14-13-11-027.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C   11.619867   -1.739659   -2.815806
 C   10.836392   -0.827276   -2.096771
 C    9.507071   -1.150833   -1.754950
 C    9.046133   -2.411125   -2.206985
 N    9.778656   -3.292442   -2.900316
 C   11.044114   -2.957977   -3.189683
 C    8.598702   -0.223434   -0.985389
 C    8.932569    1.089444   -0.613223
 C    7.930997    1.807405    0.045306
 N    6.733141    1.317226    0.344888
 C    6.507448    0.034678   -0.017056
 N    7.388870   -0.728425   -0.665301
 N    5.246654   -0.424464    0.335667
 C    4.498745   -1.652756    0.289202
 C    5.084165   -2.956036    0.325392
 C    4.210291   -4.054051    0.235451
 C    2.821515   -3.946849    0.127587
 C    2.255860   -2.669170    0.133832
 C    3.099731   -1.547307    0.210135
 N    0.853293   -2.386579    0.041395
 C   -0.213745   -3.216158   -0.218761
 C   -1.559023   -2.580826   -0.509730
 C   -1.707545   -1.370687   -1.206506
 C   -2.978000   -0.834487   -1.429546
 C   -4.141724   -1.495303   -0.992593
 C   -3.977662   -2.708686   -0.297408
 C   -2.711438   -3.250561   -0.066229
 C   -5.530033   -0.891968   -1.213671
 N   -6.044885    0.113253   -0.267469
 C   -5.504000    1.489691   -0.315116
 C   -4.343036    1.755030    0.677412
 N   -4.653866    1.404517    2.082824
 C   -5.413627    2.394550    2.856028
 C   -5.151560    0.007979    2.131446
 C   -6.299001   -0.296244    1.133029
 O   -0.117019   -4.432529   -0.194744
 C    6.540003   -3.295844    0.591953
 H   12.648443   -1.514275   -3.081654
 H   11.291842    0.115505   -1.804520
 H    8.021026   -2.708714   -2.016876
 H   11.613486   -3.696366   -3.751623
 H    9.878673    1.564994   -0.840465
 H    8.101560    2.840863    0.346146
 H    4.770132    0.314208    0.834366
 H    4.617454   -5.064490    0.275653
 H    2.193099   -4.826228    0.062556
 H    2.679933   -0.550456    0.186720
 H    0.619961   -1.406330    0.112968
 H   -0.824784   -0.854822   -1.575953
 H   -3.060259    0.110648   -1.966180
 H   -4.849834   -3.247189    0.072405
 H   -2.595247   -4.192873    0.463165
 H   -5.551859   -0.437860   -2.215047
 H   -6.264937   -1.709972   -1.231561
 H   -5.265654    1.767311   -1.306955
 H   -6.671270    2.448909    0.145848
 H   -4.034351    3.230359    0.611393
 H   -3.377215    1.168549    0.363756
 H   -6.424080    2.519859    2.450753
 H   -4.902003    3.363447    2.836606
 H   -5.491291    2.077509    3.902446
 H   -5.435992   -0.247956    3.170856
 H   -3.992032   -0.877557    1.752188
 H   -7.528400    0.546177    1.641843
 H   -6.609983   -1.391494    1.177156
 H    7.074719   -2.499279    1.122600
 H    7.081443   -3.512500   -0.335192
 H    6.643264   -4.187372    1.227005

15 14 13 11 F
19 14 13 11 F
8 7 3 2 F
12 7 3 2 F
8 7 3 4 F
12 7 3 4 F
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
