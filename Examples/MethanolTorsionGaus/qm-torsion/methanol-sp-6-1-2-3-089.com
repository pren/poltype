%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-089.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311++G(2d,2p) SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB SCRF=(PCM)

methanol Rotatable Bond SP Calculation on node36.bme.utexas.edu

0 1
 O   -0.745398    0.099464   -0.163095
 C    0.678838   -0.016840   -0.033133
 H    1.069278   -0.503405   -0.931846
 H    0.905096   -0.590296    0.870877
 H    1.089469    0.993862    0.054833
 H   -1.122157   -0.720968    0.202493

