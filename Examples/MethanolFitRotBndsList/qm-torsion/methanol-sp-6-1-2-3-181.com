%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-181.chk
%Mem=20GB
%Nproc=4
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB

methanol Rotatable Bond SP Calculation on bme-nova.bme.utexas.edu

0 1
 O    0.739667    0.124918   -0.000526
 C   -0.681427   -0.000233    0.005894
 H   -1.109505    1.008100   -0.008454
 H   -0.974726   -0.560029    0.901170
 H   -0.973149   -0.549851   -0.896798
 H    1.118099   -0.768493   -0.001290

