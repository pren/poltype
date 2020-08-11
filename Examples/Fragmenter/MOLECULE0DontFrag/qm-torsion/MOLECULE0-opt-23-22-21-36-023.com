%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-23-22-21-36-023.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C   -1.562347   -8.808345    2.974557
 C   -0.185502   -8.916186    2.740231
 C    0.536594   -7.816929    2.230297
 C   -0.221718   -6.645638    1.982373
 N   -1.540316   -6.525047    2.201714
 C   -2.188516   -7.591474    2.689543
 C    2.020557   -7.864857    1.948366
 C    2.828929   -8.997668    2.152481
 C    4.180504   -8.851859    1.828325
 N    4.723121   -7.733984    1.359205
 C    3.877962   -6.692420    1.200018
 N    2.570700   -6.726850    1.474601
 N    4.484508   -5.543373    0.709357
 C    4.037480   -4.200379    0.448921
 C    5.011338   -3.167968    0.294142
 C    4.529859   -1.872945    0.047111
 C    3.172095   -1.547513   -0.052083
 C    2.224760   -2.570397    0.090613
 C    2.681896   -3.875101    0.337176
 N    0.809459   -2.348850    0.029905
 C   -0.258586   -3.186011   -0.213647
 C   -1.617740   -2.563671   -0.457161
 C   -1.806007   -1.344600   -1.127344
 C   -3.091726   -0.830820   -1.310728
 C   -4.229077   -1.511351   -0.836405
 C   -4.024431   -2.732182   -0.164943
 C   -2.744400   -3.263998    0.007138
 C   -5.630682   -0.920217   -0.996483
 N   -6.118078    0.067374   -0.017713
 C   -5.592599    1.449598   -0.070883
 C   -4.397691    1.717939    0.879215
 N   -4.651296    1.351088    2.291563
 C   -5.388769    2.325837    3.104018
 C   -5.136476   -0.049681    2.343335
 C   -6.318292   -0.358619    1.386660
 O   -0.158642   -4.401546   -0.207038
 C    6.509012   -3.402574    0.392886
 H   -2.135011   -9.644382    3.365056
 H    0.293440   -9.866226    2.963535
 H    0.263654   -5.767360    1.576077
 H   -3.256665   -7.462435    2.856262
 H    2.465943   -9.945436    2.530335
 H    4.869273   -9.686801    1.954332
 H    5.473288   -5.713518    0.603759
 H    5.242629   -1.056934   -0.068445
 H    2.861319   -0.524881   -0.231393
 H    1.965329   -4.671461    0.451952
 H    0.566868   -1.371606    0.115326
 H   -0.943514   -0.809138   -1.516267
 H   -3.206431    0.118948   -1.833377
 H   -4.874806   -3.286751    0.230705
 H   -2.593973   -4.210230    0.524370
 H   -5.698141   -0.455421   -1.990961
 H   -6.357418   -1.745693   -1.000459
 H   -5.393408    1.740309   -1.072378
 H   -6.749352    2.392262    0.442107
 H   -4.106703    3.199257    0.814693
 H   -3.433897    1.140895    0.521411
 H   -6.417576    2.440603    2.744472
 H   -4.890818    3.301492    3.069618
 H   -5.415901    2.000572    4.150348
 H   -5.404176   -0.328777    3.447278
 H   -3.976998   -0.929926    1.915904
 H   -7.534269    0.473951    1.948270
 H   -6.614220   -1.423383    1.430750
 H    6.864915   -4.054573   -0.417517
 H    6.780207   -3.880620    1.344818
 H    7.094229   -2.474721    0.331096

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
