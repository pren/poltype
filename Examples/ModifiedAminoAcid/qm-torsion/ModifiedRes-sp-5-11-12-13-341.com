%RWF=/scratch/bdw2292/Gau-ModifiedRes/,100GB
%Nosave
%Chk=ModifiedRes-sp-5-11-12-13-341.chk
%Mem=20GB
%Nproc=6
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB Pop=NBORead

ModifiedRes Rotatable Bond SP Calculation on g2-node38.bme.utexas.edu

0 1
 C    0.932142    1.939461   -0.592514
 O    1.399529    2.222484    0.517394
 N    0.508930    0.682081   -0.912152
 H    0.276704    0.480632   -1.880114
 C    0.403444   -0.388715    0.096381
 H    0.134727    0.083409    1.052959
 C    1.768846   -1.087291    0.254707
 O    1.950793   -2.184932   -0.276840
 H   -0.400614   -1.881972   -1.251975
 H   -0.660427   -2.199366    0.482999
 C   -0.674743   -1.432428   -0.293791
 S   -2.385315   -0.759235   -0.503114
 C   -2.357955    0.716974    0.346574
 N   -2.303401    1.757367    0.911374
 N    2.692741   -0.415116    0.989896
 H    0.855030    2.670758   -1.412000
 H    2.484319    0.537473    1.280788
 H    3.604913   -0.829658    1.124993

