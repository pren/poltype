%RWF=/scratch/bdw2292/Gau-ModifiedRes/,100GB
%Nosave
%Chk=ModifiedRes-sp-3-5-11-12-154.chk
%Mem=20GB
%Nproc=6
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB Pop=NBORead

ModifiedRes Rotatable Bond SP Calculation on g2-node38.bme.utexas.edu

0 1
 C    2.743271   -1.207412    0.701343
 O    2.868932   -1.536770   -0.483544
 N    1.645577   -0.549527    1.174801
 H    1.708908   -0.114592    2.090273
 C    0.488503   -0.237995    0.316387
 H    0.388165   -1.054767   -0.413666
 C    0.753209    1.080856   -0.444268
 O    0.287735    2.141733   -0.030893
 H   -1.198489   -1.175661    1.319542
 H   -0.520987    0.232130    2.174111
 C   -0.790995   -0.170544    1.195649
 S   -2.166001    0.894622    0.567132
 C   -2.804115   -0.194150   -0.570986
 N   -3.201821   -0.959123   -1.383479
 N    1.540270    0.965887   -1.546206
 H    3.522009   -1.395708    1.457193
 H    1.987223    0.074249   -1.744355
 H    1.741778    1.796494   -2.086430

