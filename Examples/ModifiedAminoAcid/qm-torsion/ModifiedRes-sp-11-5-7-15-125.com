%RWF=/scratch/bdw2292/Gau-ModifiedRes/,100GB
%Nosave
%Chk=ModifiedRes-sp-11-5-7-15-125.chk
%Mem=20GB
%Nproc=6
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB Pop=NBORead

ModifiedRes Rotatable Bond SP Calculation on g2-node38.bme.utexas.edu

0 1
 C    1.951256   -1.923283    0.140556
 O    2.452650   -1.994471   -0.980285
 N    1.060855   -0.951483    0.495816
 H    0.798906   -0.896433    1.476380
 C    0.580063    0.112377   -0.408721
 H    0.559269   -0.328433   -1.414742
 C    1.540143    1.331980   -0.425159
 O    1.215080    2.302669   -1.110253
 H   -0.800117    1.027649    1.007137
 H   -1.159721    1.347369   -0.704073
 C   -0.820882    0.588108    0.007233
 S   -2.032537   -0.806409   -0.008943
 C   -3.463095    0.074189    0.257938
 N   -4.452243    0.707955    0.415625
 N    2.691232    1.309681    0.301640
 H    2.194459   -2.632956    0.947328
 H    3.058337    0.462183    0.712508
 H    3.275517    2.133486    0.242406
