%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-271.chk
%Mem=20GB
%Nproc=4
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB

methanol Rotatable Bond SP Calculation on bme-nova.bme.utexas.edu

0 1
 O   -0.732721   -0.096275    0.166558
 C    0.683916    0.014322    0.034500
 H    0.969834   -0.414073   -0.932640
 H    1.143892   -0.516735    0.875132
 H    0.949530    1.077476    0.069472
 H   -1.134242    0.701118   -0.213021

