%RWF=/scratch/bdw2292/Gau-ModifiedRes/,50GB
%Nosave
%Chk=ModifiedRes-opt-3-7-8-9-011.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=50GB

ModifiedRes Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 N    1.078166   -0.916165    0.766244
 H    0.728127   -0.908994    1.719857
 C    0.639195    0.134818   -0.173855
 H    0.738058   -0.286629   -1.183926
 C    1.585050    1.352811   -0.025651
 O    1.210436    2.356005    0.587244
 C   -0.828916    0.571043    0.040930
 S   -2.129405   -0.747052   -0.041657
 C   -1.347180   -2.259051   -0.049619
 N   -0.791558   -3.306904   -0.029699
 H   -0.895579    1.057183    1.017650
 H   -1.065375    1.286606   -0.751189
 C    2.096780   -1.781802    0.477927
 O    2.728395   -1.751055   -0.585249
 N    2.809068    1.235916   -0.605262
 H    2.306839   -2.513308    1.273692
 H    3.101317    0.358764   -1.026949
 H    3.439282    2.021713   -0.520889

3 7 8 9 F
3 1 13 14 F
7 3 1 13 F
5 3 1 13 F
7 3 5 15 F
1 3 5 6 F
1 3 5 15 F
7 3 5 6 F
1 3 7 8 F
5 3 7 8 F
