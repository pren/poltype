%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-091.chk
%Mem=20GB
%Nproc=4
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB

methanol Rotatable Bond SP Calculation on bme-nova.bme.utexas.edu

0 1
 O   -0.731408   -0.097233   -0.165627
 C    0.683718    0.024842   -0.028913
 H    0.973059   -0.424208    0.927761
 H    0.953088    1.085799   -0.081348
 H    1.141259   -0.521980   -0.861378
 H   -1.139718    0.698967    0.209200

