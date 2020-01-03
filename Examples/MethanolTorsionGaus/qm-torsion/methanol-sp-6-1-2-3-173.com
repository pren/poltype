%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-173.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311++G(2d,2p) SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB SCRF=(PCM)

methanol Rotatable Bond SP Calculation on node36.bme.utexas.edu

0 1
 O   -0.750224    0.132482    0.048816
 C    0.677600    0.001294    0.003019
 H    1.116383    1.003280   -0.008291
 H    0.947190   -0.572757   -0.888614
 H    0.994196   -0.536165    0.902566
 H   -1.110024   -0.766481   -0.057554

