%RWF=/scratch/bdw2292/Gau-ModifiedRes/,100GB
%Nosave
%Chk=ModifiedRes-opt-3-5-11-12-078.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

ModifiedRes Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C    1.988730   -1.803314    0.501163
 O    2.668575   -1.764742   -0.531202
 N    0.996874   -0.905626    0.771865
 H    0.626151   -0.883126    1.717912
 C    0.602332    0.166172   -0.161593
 H    0.694774   -0.239701   -1.180837
 C    1.599074    1.341518   -0.019011
 O    1.287159    2.359753    0.593007
 H   -1.230775    1.089726   -0.827369
 H   -1.459461   -0.336868    0.221243
 C   -0.872627    0.571039    0.063755
 S   -1.230768    1.665169    1.518435
 C   -2.930044    1.574237    1.518431
 N   -4.114422    1.521770    1.535172
 N    2.809126    1.161035   -0.610908
 H    2.149235   -2.553607    1.291481
 H    3.036635    0.254950   -1.012764
 H    3.494132    1.902316   -0.548381

3 5 11 12 F
7 5 11 12 F
11 5 7 15 F
3 5 7 15 F
3 5 7 8 F
11 5 7 8 F
5 11 12 13 F

