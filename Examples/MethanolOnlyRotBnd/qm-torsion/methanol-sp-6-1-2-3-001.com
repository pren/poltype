%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-001.chk
%Mem=20GB
%Nproc=4
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB

methanol Rotatable Bond SP Calculation on bme-nova.bme.utexas.edu

0 1
 O    0.722983   -0.022554    0.292947
 C   -0.684266   -0.030762    0.054040
 H   -0.897942   -0.681925   -0.801025
 H   -1.002004    1.001449   -0.130252
 H   -1.167263   -0.424356    0.955875
 H    1.147447   -0.587447   -0.371587

