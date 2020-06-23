%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-2-3-7-8-171.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on node37.bme.utexas.edu

0 1
 C   -0.234578    4.190176   -0.969861
 C    1.090750    4.113954   -0.524709
 C    1.846145    2.942405   -0.739974
 C    1.165053    1.879533   -1.381016
 N   -0.103534    1.932741   -1.806716
 C   -0.783476    3.071721   -1.604693
 C    3.281159    2.787934   -0.299576
 C    4.029487    1.599045   -0.316227
 C    5.350113    1.705771    0.132391
 N    5.912159    2.835287    0.551727
 C    5.120505    3.928248    0.531843
 N    3.846003    3.934317    0.129814
 N    5.726676    5.098867    0.962149
 C    5.255745    6.443609    1.178183
 C    6.042547    7.339840    1.964029
 C    5.542185    8.639172    2.151268
 C    4.323529    9.088511    1.630628
 C    3.563746    8.198712    0.864429
 C    4.043992    6.897259    0.642924
 N    2.287422    8.477532    0.281760
 C    1.441838    9.552580    0.424758
 C    0.035350    9.393780   -0.118063
 C   -0.665873    8.178679   -0.045846
 C   -1.944607    8.066718   -0.594181
 C   -2.569308    9.159020   -1.224448
 C   -1.866750   10.379136   -1.262497
 C   -0.593461   10.505177   -0.701335
 C   -3.936690    9.001717   -1.891048
 N   -4.008159    8.467930   -3.262627
 C   -3.796761    7.019668   -3.482221
 C   -2.338487    6.634749   -3.842053
 N   -1.783632    7.386087   -4.992493
 C   -2.132744    6.897045   -6.331747
 C   -1.961630    8.839389   -4.753552
 C   -3.405202    9.252923   -4.364002
 O    1.785573   10.603745    0.940042
 C    7.366616    6.954532    2.601353
 H   -0.829219    5.086528   -0.824998
 H    1.518656    4.962930   -0.000073
 H    1.661320    0.934734   -1.586829
 H   -1.810850    3.083145   -1.965102
 H    3.643055    0.638157   -0.633325
 H    5.995021    0.827679    0.154643
 H    6.673207    4.898810    1.248656
 H    6.115372    9.349568    2.745542
 H    3.963585   10.093001    1.818484
 H    3.466705    6.204651    0.049592
 H    1.918808    7.721728   -0.278326
 H   -0.209763    7.327841    0.454663
 H   -2.460163    7.108361   -0.531112
 H   -2.312689   11.249371   -1.743196
 H   -0.060179   11.452188   -0.723862
 H   -4.561666    8.356760   -1.256077
 H   -4.433724    9.982782   -1.906225
 H   -4.182603    6.458491   -2.681134
 H   -4.653681    6.625849   -4.752329
 H   -2.346397    5.165224   -4.194160
 H   -1.642371    6.775647   -2.964898
 H   -3.206114    7.006184   -6.523799
 H   -1.860608    5.840203   -6.431436
 H   -1.580184    7.458133   -7.094176
 H   -1.596351    9.417106   -5.654044
 H   -1.074934    9.197130   -3.603714
 H   -4.277339    8.980336   -5.653160
 H   -3.479794   10.343929   -4.151965
 H    8.124211    6.718859    1.840499
 H    7.259633    6.071093    3.246483
 H    7.788353    7.750871    3.230066

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
