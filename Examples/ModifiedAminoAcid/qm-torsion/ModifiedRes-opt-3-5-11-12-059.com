%RWF=/scratch/bdw2292/Gau-ModifiedRes/,100GB
%Nosave
%Chk=ModifiedRes-opt-3-5-11-12-059.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) HF/6-31G* MaxDisk=100GB

ModifiedRes Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C    2.007609   -1.812296    0.500546
 O    2.695117   -1.755293   -0.525915
 N    0.997526   -0.933699    0.768378
 H    0.624629   -0.924835    1.713297
 C    0.592627    0.132120   -0.168917
 H    0.704390   -0.285415   -1.181192
 C    1.553340    1.332332   -0.014031
 O    1.183937    2.336628    0.591482
 H   -1.137855    1.331232   -0.687042
 H   -1.520116   -0.320478   -0.151468
 C   -0.880897    0.546787    0.027158
 S   -1.270303    1.168981    1.728978
 C   -2.966807    1.219428    1.624124
 N   -4.150590    1.261000    1.574927
 N    2.779890    1.188733   -0.580847
 H    2.176692   -2.562941    1.288599
 H    3.040671    0.290086   -0.979170
 H    3.439940    1.951230   -0.506408

3 5 11 12 F
7 5 11 12 F
11 5 7 15 F
3 5 7 15 F
3 5 7 8 F
11 5 7 8 F
5 11 12 13 F

