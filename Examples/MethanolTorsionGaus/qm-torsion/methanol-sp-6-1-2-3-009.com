%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-sp-6-1-2-3-009.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311++G(2d,2p) SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB SCRF=(PCM)

methanol Rotatable Bond SP Calculation on node36.bme.utexas.edu

0 1
 O   -0.737474    0.019822    0.270611
 C    0.680932   -0.032853    0.056846
 H    0.886193   -0.647452   -0.824827
 H    1.150214   -0.443863    0.955529
 H    1.030312    0.990080   -0.114899
 H   -1.134619   -0.623869   -0.342930

