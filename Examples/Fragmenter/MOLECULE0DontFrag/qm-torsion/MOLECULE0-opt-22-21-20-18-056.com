%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-22-21-20-18-056.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C    7.899170   -3.458055   -1.078604
 C    7.753383   -2.277619   -0.337830
 C    6.478766   -1.879157    0.114781
 C    5.410497   -2.749241   -0.214163
 N    5.532502   -3.881830   -0.917432
 C    6.757781   -4.222225   -1.341922
 C    6.235383   -0.615291    0.902339
 C    7.238671    0.273654    1.323371
 C    6.801191    1.387965    2.045165
 N    5.529043    1.643276    2.331137
 C    4.630806    0.743139    1.877308
 N    4.941713   -0.357343    1.186232
 N    3.313267    1.045257    2.179203
 C    2.053520    0.377783    1.978854
 C    0.924200    0.806132    2.742216
 C   -0.289159    0.137299    2.521015
 C   -0.441154   -0.919230    1.618769
 C    0.669135   -1.320753    0.863394
 C    1.898929   -0.668986    1.059230
 N    0.662240   -2.374281   -0.108752
 C   -0.302449   -3.302845   -0.412338
 C   -1.653264   -2.723880   -0.774099
 C   -1.797281   -1.510216   -1.465187
 C   -3.063889   -0.952275   -1.639883
 C   -4.217796   -1.590689   -1.148475
 C   -4.066679   -2.867106   -0.574185
 C   -2.803403   -3.436581   -0.399417
 C   -5.572357   -0.883977   -1.188832
 N   -5.869041    0.054184   -0.088640
 C   -5.204798    1.377761   -0.065071
 C   -3.892719    1.415876    0.765775
 N   -4.030559    0.908999    2.154253
 C   -4.541422    1.860977    3.146457
 C   -4.680843   -0.423442    2.112987
 C   -5.993208   -0.479352    1.287474
 O   -0.119330   -4.506452   -0.383309
 C    0.969088    1.928267    3.765871
 H    8.870273   -3.778437   -1.444059
 H    8.643399   -1.684545   -0.142797
 H    4.403936   -2.527287    0.123624
 H    6.822586   -5.147304   -1.912277
 H    8.295358    0.133918    1.131895
 H    7.518551    2.120583    2.413805
 H    3.287807    1.888868    2.732115
 H   -1.177849    0.440633    3.074336
 H   -1.408911   -1.391513    1.510719
 H    2.764023   -0.971988    0.488721
 H    1.525508   -2.520441   -0.612758
 H   -0.911604   -0.969184   -1.787441
 H   -3.139965    0.030321   -2.105803
 H   -4.936379   -3.397521   -0.187043
 H   -2.681154   -4.391417    0.106031
 H   -5.663913   -0.336630   -2.137775
 H   -6.374413   -1.635762   -1.203416
 H   -5.088385    1.756455   -1.033991
 H   -6.195311    2.367294    0.684922
 H   -3.459664    2.858354    0.826131
 H   -3.083087    0.847775    0.279473
 H   -5.575772    2.145992    2.923394
 H   -3.920666    2.764206    3.158251
 H   -4.505828    1.418026    4.148264
 H   -5.005578   -0.830985    3.489893
 H   -3.854075   -1.237359    1.654972
 H   -7.004948    0.476535    2.058133
 H   -6.427077   -1.417538    1.281020
 H    1.208694    2.891831    3.294695
 H    1.728533    1.738774    4.537573
 H    0.015277    2.065203    4.294002

22 21 20 18 F
36 21 20 18 F
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

