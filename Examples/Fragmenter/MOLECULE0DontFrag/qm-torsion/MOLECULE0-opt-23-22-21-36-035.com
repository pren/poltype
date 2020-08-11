%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-23-22-21-36-035.chk
%Mem=20GB
%Nproc=6
#P opt=(maxcycle=5,Loose) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C   -5.681713   -9.005668   -0.432915
 C   -4.561437   -9.845409   -0.375205
 C   -3.286497   -9.299148   -0.129881
 C   -3.243551   -7.897916    0.074433
 N   -4.302524   -7.079496    0.027201
 C   -5.497664   -7.633069   -0.230322
 C   -2.021100  -10.116776   -0.066206
 C   -1.959811  -11.520062   -0.090984
 C   -0.679355  -12.076793    0.011554
 N    0.441721  -11.366319    0.115495
 C    0.290763  -10.026250    0.113155
 N   -0.884591   -9.401869    0.026503
 N    1.463196   -9.298152    0.207559
 C    1.752365   -7.888874    0.308229
 C    3.042571   -7.470474    0.755883
 C    3.270787   -6.088721    0.863213
 C    2.316624   -5.112951    0.554612
 C    1.067069   -5.530998    0.084219
 C    0.810900   -6.907189   -0.031030
 N   -0.014171   -4.663125   -0.281554
 C   -0.176226   -3.304083   -0.135372
 C   -1.559600   -2.734023   -0.384009
 C   -1.646217   -1.469554   -0.989775
 C   -2.890882   -0.906440   -1.280012
 C   -4.090419   -1.573416   -0.966666
 C   -3.988663   -2.836403   -0.352227
 C   -2.748522   -3.408314   -0.057803
 C   -5.451420   -0.929173   -1.235681
 N   -6.024000    0.017355   -0.264680
 C   -5.474112    1.389073   -0.174653
 C   -4.382884    1.577333    0.911247
 N   -4.793560    1.120477    2.260920
 C   -5.603425    2.053716    3.053106
 C   -5.291553   -0.273647    2.162315
 C   -6.385778   -0.478996    1.082538
 O    0.746545   -2.562308    0.163484
 C    4.149678   -8.439015    1.137190
 H   -6.672520   -9.403164   -0.632629
 H   -4.701276  -10.910562   -0.543000
 H   -2.304575   -7.407638    0.311357
 H   -6.336332   -6.939526   -0.265215
 H   -2.822405  -12.171599   -0.159758
 H   -0.520540  -13.154829    0.014969
 H    2.240432   -9.933911    0.304285
 H    4.240121   -5.736600    1.213622
 H    2.530402   -4.057185    0.665054
 H   -0.145089   -7.233195   -0.406383
 H   -0.823991   -5.141777   -0.650329
 H   -0.728217   -0.939086   -1.230188
 H   -2.925636    0.075708   -1.750620
 H   -4.890666   -3.386922   -0.085818
 H   -2.701938   -4.384087    0.420611
 H   -5.396338   -0.409054   -2.202253
 H   -6.191679   -1.731623   -1.364033
 H   -5.090041    1.748867   -1.227132
 H   -6.612986    2.287343    0.183857
 H   -4.035256    2.874533    0.981331
 H   -3.325991    0.920736    0.595439
 H   -6.582543    2.215825    2.588346
 H   -5.090187    3.018184    3.142239
 H   -5.753243    1.659520    4.064983
 H   -5.682458   -0.632752    3.241247
 H   -4.136883   -1.106679    1.824719
 H   -7.575432    0.260018    1.509450
 H   -6.711509   -1.658739    1.025341
 H    4.458379   -9.080270    0.299444
 H    3.832084   -9.098950    1.949260
 H    5.053565   -7.931506    1.483920

36 21 22 23 F
20 21 22 23 F
36 21 22 27 F
20 21 22 27 F
12 11 13 14 F
10 11 13 14 F
19 18 20 21 F
17 18 20 21 F
24 25 28 29 F
26 25 28 29 F
25 28 29 35 F
25 28 29 30 F
