%RWF=/scratch/bdw2292/Gau-ModifiedRes/,50GB
%Nosave
%Chk=ModifiedRes-sp-1-3-7-8-059.chk
%Mem=20GB
%Nproc=4
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=50GB

ModifiedRes Rotatable Bond SP Calculation on bme-nova.bme.utexas.edu

0 1
 N    0.679006    1.102656   -0.312153
 H   -0.059763    1.201322   -1.002426
 C    0.637323   -0.038972    0.630255
 H    1.201330    0.253387    1.527402
 C    1.325262   -1.264557   -0.027736
 O    0.686820   -2.293839   -0.256750
 C   -0.798499   -0.354963    1.098261
 S   -1.943093   -0.772549   -0.301097
 C   -3.011494    0.543426   -0.141122
 N   -3.764918    1.453305   -0.043269
 H   -0.768316   -1.198067    1.791476
 H   -1.225670    0.507678    1.616333
 C    1.740956    1.956503   -0.397121
 O    2.765353    1.828375    0.282642
 N    2.649901   -1.136385   -0.309600
 H    1.608408    2.772200   -1.125259
 H    3.171612   -0.310484   -0.031028
 H    3.104836   -1.930113   -0.739530
