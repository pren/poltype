%RWF=/scratch/bdw2292/Gau-ModifiedRes/,50GB
%Nosave
%Chk=ModifiedRes-opt-13-1-3-7-175.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=50GB

ModifiedRes Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 N    0.962745   -0.954005    0.726215
 H    0.588099   -0.915423    1.670421
 C    0.591538    0.133336   -0.210147
 H    0.347268   -0.354103   -1.162633
 C    1.783524    1.114341   -0.410223
 O    1.779642    2.205783    0.165245
 C   -0.627111    0.934146    0.304361
 S   -2.053029   -0.184215    0.629098
 C   -3.268019    0.980626    0.864428
 N   -4.135043    1.770583    1.033096
 H   -0.367019    1.470569    1.219821
 H   -0.921548    1.661545   -0.455911
 C    1.928309   -1.898643    0.509463
 O    2.622420   -1.981467   -0.509929
 N    2.792254    0.721060   -1.228453
 H    2.027331   -2.613308    1.342698
 H    2.882348   -0.248331   -1.512491
 H    3.558590    1.368805   -1.351360

7 3 1 13 F
5 3 1 13 F
3 1 13 14 F
7 3 5 15 F
1 3 5 6 F
1 3 5 15 F
7 3 5 6 F
1 3 7 8 F
5 3 7 8 F
3 7 8 9 F
