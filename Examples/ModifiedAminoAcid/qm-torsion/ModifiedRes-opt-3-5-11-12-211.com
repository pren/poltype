%RWF=/scratch/bdw2292/Gau-ModifiedRes/,100GB
%Nosave
%Chk=ModifiedRes-opt-3-5-11-12-211.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

ModifiedRes Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C    1.932321   -1.824124    0.495805
 O    2.633564   -1.780856   -0.521812
 N    0.948216   -0.915444    0.754983
 H    0.557363   -0.888868    1.692154
 C    0.594019    0.162992   -0.182800
 H    0.707834   -0.249000   -1.196610
 C    1.575558    1.342970   -0.020516
 O    1.209933    2.346847    0.592944
 H   -1.483301   -0.203734    0.432343
 H   -0.890847    1.428644    0.757811
 C   -0.866050    0.604756    0.036676
 S   -1.587137    1.189183   -1.553987
 C   -3.019553    1.887695   -0.962758
 N   -4.025332    2.380683   -0.574582
 N    2.801649    1.180556   -0.582480
 H    2.067242   -2.585114    1.280296
 H    3.051386    0.276152   -0.974836
 H    3.473035    1.932363   -0.502232

3 5 11 12 F
7 5 11 12 F
11 5 7 15 F
3 5 7 15 F
3 5 7 8 F
11 5 7 8 F
5 11 12 13 F

