%RWF=/scratch/bdw2292/Gau-ModifiedRes/,50GB
%Nosave
%Chk=ModifiedRes-opt-7-3-5-15-276.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=50GB

ModifiedRes Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 N    0.969113   -0.945231    0.759415
 H    0.595296   -0.926334    1.703275
 C    0.591134    0.125197   -0.190691
 H    0.705705   -0.305491   -1.194337
 C    1.544272    1.335071   -0.026766
 O    2.092900    1.558239    1.053442
 C   -0.859173    0.594997    0.014866
 S   -2.038893   -0.816157   -0.094779
 C   -3.489953    0.068325   -0.135731
 N   -4.512829    0.665881   -0.165526
 H   -0.966203    1.081481    0.988067
 H   -1.118602    1.319310   -0.761297
 C    1.966426   -1.837009    0.485160
 O    2.614104   -1.825508   -0.565506
 N    1.712004    2.112558   -1.131449
 H    2.138338   -2.579766    1.280475
 H    1.419586    1.797099   -2.047947
 H    2.344574    2.894537   -1.029173

7 3 5 15 F
1 3 5 6 F
1 3 5 15 F
7 3 5 6 F
3 1 13 14 F
7 3 1 13 F
5 3 1 13 F
1 3 7 8 F
5 3 7 8 F
3 7 8 9 F
