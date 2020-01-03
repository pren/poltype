%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-211.chk
%Mem=20GB
%Nproc=4
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB

methanol Rotatable Bond SP Calculation on bme-nova.bme.utexas.edu

0 1
 O   -0.682923   -0.369687   -0.345072
 C    0.694563   -0.110380   -0.077075
 H    1.174783    0.171904   -1.020457
 H    1.133110   -1.016156    0.356372
 H    0.754534    0.717666    0.639035
 H   -1.193022   -0.138945    0.447199

