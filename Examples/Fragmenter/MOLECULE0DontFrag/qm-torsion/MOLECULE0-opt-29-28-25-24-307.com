%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-29-28-25-24-307.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C   -0.513437    4.038026    2.138531
 C    0.665208    3.692346    2.813324
 C    1.269538    2.441192    2.578505
 C    0.619903    1.615066    1.627369
 N   -0.502119    1.927722    0.966453
 C   -1.055224    3.121300    1.230794
 C    2.544247    1.990785    3.249961
 C    3.334808    2.768160    4.111258
 C    4.507966    2.159601    4.571746
 N    4.890946    0.925470    4.256009
 C    4.057874    0.241663    3.443803
 N    2.917995    0.732178    2.948910
 N    4.453691   -1.051041    3.130894
 C    3.908521   -2.067434    2.263759
 C    4.727383   -3.166760    1.864454
 C    4.157550   -4.105174    0.986584
 C    2.845784   -4.027915    0.503048
 C    2.041907   -2.970711    0.940829
 C    2.587704   -2.007383    1.803698
 N    0.680201   -2.738063    0.569343
 C   -0.124032   -3.338883   -0.370069
 C   -1.442291   -2.655215   -0.679326
 C   -1.600355   -1.259626   -0.688375
 C   -2.856064   -0.692153   -0.910596
 C   -3.990860   -1.481694   -1.170619
 C   -3.802186   -2.878269   -1.216853
 C   -2.554698   -3.458991   -0.974918
 C   -5.388250   -0.880170   -1.349746
 N   -5.998808    0.016744   -0.349041
 C   -5.562195    1.424366   -0.198464
 C   -4.548507    1.711778    0.941821
 N   -4.953970    1.179010    2.262826
 C   -5.901858    1.981170    3.044925
 C   -5.271952   -0.261584    2.112933
 C   -6.292670   -0.555600    0.985617
 O    0.177596   -4.384262   -0.924012
 C    6.170424   -3.336975    2.307273
 H   -0.999470    4.993936    2.309145
 H    1.082216    4.406222    3.519493
 H    1.051411    0.655939    1.362575
 H   -1.964935    3.356428    0.681836
 H    3.103173    3.787692    4.394087
 H    5.185299    2.702745    5.230245
 H    5.349976   -1.241282    3.553519
 H    4.759782   -4.945411    0.643069
 H    2.445049   -4.771017   -0.175703
 H    1.976257   -1.184788    2.137815
 H    0.256399   -1.946402    1.032720
 H   -0.745247   -0.616597   -0.491457
 H   -2.925192    0.392429   -0.922509
 H   -4.647209   -3.538163   -1.413127
 H   -2.427121   -4.538454   -0.989822
 H   -5.380660   -0.326555   -2.300503
 H   -6.100692   -1.711864   -1.454011
 H   -5.266676    1.828085   -1.126112
 H   -6.886685    2.240915    0.245740
 H   -4.452516    3.225637    1.048068
 H   -3.652860    1.376693    0.752568
 H   -6.876834    2.034684    2.547612
 H   -5.515485    2.997774    3.179598
 H   -6.037697    1.539414    4.038889
 H   -5.549700   -0.655708    3.017298
 H   -3.941344   -0.973095    1.680099
 H   -7.637184    0.019202    1.449448
 H   -6.431881   -2.043590    0.882102
 H    6.242029   -3.472832    3.395759
 H    6.778210   -2.460179    2.042736
 H    6.660222   -4.206934    1.848574

29 28 25 24 F
29 28 25 26 F
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
25 28 29 35 F
25 28 29 30 F

