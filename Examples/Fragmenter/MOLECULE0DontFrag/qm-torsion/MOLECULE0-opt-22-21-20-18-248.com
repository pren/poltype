%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-22-21-20-18-248.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C   -0.852332    2.923644    3.994601
 C    0.486715    3.177266    3.663194
 C    1.130372    2.387094    2.690838
 C    0.329350    1.382378    2.093229
 N   -0.950332    1.131198    2.386252
 C   -1.527140    1.891777    3.330293
 C    2.559437    2.589671    2.249798
 C    3.409745    3.633150    2.647401
 C    4.671565    3.650713    2.039301
 N    5.094981    2.756878    1.147776
 C    4.222489    1.771922    0.849274
 N    2.999733    1.668372    1.372841
 N    4.654715    0.819559   -0.064665
 C    3.999553   -0.315395   -0.674974
 C    4.553030   -0.909568   -1.848804
 C    3.839486   -1.976361   -2.423449
 C    2.647318   -2.496325   -1.902085
 C    2.149405   -1.937934   -0.720370
 C    2.826631   -0.857939   -0.136794
 N    0.966653   -2.344127   -0.037567
 C   -0.024858   -3.214513   -0.400997
 C   -1.372875   -2.572930   -0.660167
 C   -1.519067   -1.298099   -1.231818
 C   -2.790238   -0.748897   -1.416606
 C   -3.954518   -1.454915   -1.059313
 C   -3.791059   -2.735381   -0.495819
 C   -2.525100   -3.296262   -0.313444
 C   -5.343370   -0.835047   -1.221697
 N   -5.882600    0.068007   -0.189787
 C   -5.362055    1.451528   -0.091364
 C   -4.299862    1.697759    1.010786
 N   -4.672201    1.211578    2.360406
 C   -5.585356    2.067974    3.128831
 C   -5.066334   -0.212661    2.237748
 C   -6.148569   -0.479156    1.159775
 O    0.145881   -4.417251   -0.497611
 C    5.827809   -0.414930   -2.509775
 H   -1.368294    3.517107    4.743280
 H    1.003950    3.982559    4.179453
 H    0.732446    0.764640    1.298839
 H   -2.571714    1.672891    3.543466
 H    3.124048    4.414847    3.340659
 H    5.382122    4.442148    2.277366
 H    5.577129    1.059307   -0.395984
 H    4.221719   -2.438976   -3.332727
 H    2.140688   -3.330555   -2.374056
 H    2.440109   -0.424758    0.770747
 H    0.772354   -1.865886    0.832063
 H   -0.633812   -0.733387   -1.512819
 H   -2.870634    0.249323   -1.846458
 H   -4.663458   -3.314710   -0.194389
 H   -2.407409   -4.287312    0.118203
 H   -5.357812   -0.277001   -2.169198
 H   -6.069763   -1.654388   -1.325495
 H   -5.033349    1.801659   -1.051659
 H   -6.593653    2.364663    0.322761
 H   -4.022297    2.982587    1.077390
 H   -3.071166    0.988449    0.625333
 H   -6.564038    2.141330    2.641444
 H   -5.163864    3.075096    3.227615
 H   -5.723867    1.661392    4.137365
 H   -5.339065   -0.592761    3.187151
 H   -3.785278   -0.990783    1.770002
 H   -7.441866    0.168273    1.670131
 H   -6.369682   -1.871025    1.081746
 H    6.689830   -0.505634   -1.833798
 H    5.746078    0.641760   -2.801265
 H    6.083750   -0.973537   -3.420603

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
