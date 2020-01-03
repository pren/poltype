%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-331.chk
%Mem=20GB
%Nproc=4
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB

methanol Rotatable Bond SP Calculation on bme-nova.bme.utexas.edu

0 1
 O   -0.734622    0.084086   -0.169896
 C    0.682212   -0.009063   -0.027454
 H    0.909245   -0.610420    0.860106
 H    1.081062    1.008007    0.054595
 H    1.072203   -0.500905   -0.926193
 H   -1.128908   -0.717289    0.208878

