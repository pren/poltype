%RWF=/scratch/bdw2292/Gau-ModifiedRes/,50GB
%Nosave
%Chk=ModifiedRes-opt-1-3-7-8-192.chk
%Mem=20GB
%Nproc=4
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=50GB

ModifiedRes Rotatable Bond Optimization on bme-nova.bme.utexas.edu

0 1
 N    0.946858   -0.914834    0.761031
 H    0.557156   -0.892414    1.699030
 C    0.593517    0.160774   -0.188574
 H    0.713667   -0.259750   -1.196672
 C    1.584331    1.340980   -0.017859
 O    1.241921    2.358000    0.588533
 C   -0.866654    0.613569    0.001122
 S   -1.429391    1.693728   -1.386151
 C   -2.892996    2.232277   -0.707175
 N   -3.917437    2.620769   -0.252742
 H   -1.541692   -0.242902    0.067123
 H   -0.953211    1.184984    0.929190
 C    1.935773   -1.823020    0.506599
 O    2.611432   -1.821061   -0.528596
 N    2.815944    1.170978   -0.568097
 H    2.080201   -2.565798    1.307205
 H    3.084000    0.283165   -0.983067
 H    3.469580    1.936455   -0.476101

1 3 7 8 F
5 3 7 8 F
3 1 13 14 F
7 3 1 13 F
5 3 1 13 F
7 3 5 15 F
1 3 5 6 F
1 3 5 15 F
7 3 5 6 F
3 7 8 9 F
