%RWF=/scratch/bdw2292/Gau-ModifiedRes/,100GB
%Nosave
%Chk=ModifiedRes-opt-11-5-7-15-314.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

ModifiedRes Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C    1.936730   -1.831319    0.483634
 O    2.484896   -1.928164   -0.617610
 N    0.951804   -0.922715    0.749684
 H    0.570958   -0.903116    1.691056
 C    0.586528    0.155072   -0.194515
 H    0.703196   -0.264772   -1.204253
 C    1.566253    1.347262   -0.028926
 O    2.585747    1.220381    0.646349
 H   -0.991359    1.063997    0.999952
 H   -1.160119    1.320417   -0.739085
 C   -0.877323    0.592099    0.020830
 S   -2.030119   -0.847448   -0.108146
 C   -3.502815    0.002940   -0.130680
 N   -4.536857    0.581063   -0.147844
 N    1.241616    2.513505   -0.654080
 H    2.186373   -2.489708    1.331081
 H    0.523589    2.567100   -1.365588
 H    1.891004    3.279707   -0.532858

11 5 7 15 F
3 5 7 15 F
3 5 7 8 F
11 5 7 8 F
3 5 11 12 F
7 5 11 12 F
5 11 12 13 F
