%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-201.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311++G(2d,2p) SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB SCRF=(PCM)

methanol Rotatable Bond SP Calculation on node36.bme.utexas.edu

0 1
 O   -0.748586    0.117395   -0.118431
 C    0.678504   -0.002046   -0.029913
 H    1.104811    1.002266    0.049335
 H    1.037172   -0.530717   -0.918079
 H    0.916450   -0.579869    0.868977
 H   -1.112755   -0.745769    0.148294

