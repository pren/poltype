%RWF=/scratch/bdw2292/Gau-ModifiedRes/,100GB
%Nosave
%Chk=ModifiedRes-opt-3-5-11-12-173.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

ModifiedRes Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C    1.916984   -1.815737    0.507570
 O    2.627479   -1.789451   -0.504283
 N    0.939834   -0.895182    0.752200
 H    0.541446   -0.860576    1.685936
 C    0.604004    0.181342   -0.195717
 H    0.718241   -0.233928   -1.208065
 C    1.608597    1.342250   -0.027169
 O    1.262678    2.353189    0.581886
 H   -1.547918   -0.170767   -0.260068
 H   -1.003195    0.885285    1.058603
 C   -0.856383    0.630724    0.006021
 S   -1.290438    2.121191   -0.998666
 C   -2.795411    2.488009   -0.298392
 N   -3.847276    2.759960    0.176294
 N    2.836077    1.154119   -0.577945
 H    2.037945   -2.571292    1.299614
 H    3.069828    0.245001   -0.969208
 H    3.523309    1.890563   -0.489510

3 5 11 12 F
7 5 11 12 F
11 5 7 15 F
3 5 7 15 F
3 5 7 8 F
11 5 7 8 F
5 11 12 13 F

