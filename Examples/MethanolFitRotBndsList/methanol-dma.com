%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-dma.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

 methanol Gaussian Optimization on bme-nova.bme.utexas.edu

0 1
O	       0.750867    0.122706    0.000000
C	      -0.666540   -0.019469    0.000000
H	      -1.031969   -0.543037    0.892105
H	      -1.031967   -0.543052   -0.892097
H	      -1.074559    0.991201   -0.000008
H	       1.130797   -0.769944    0.000000
	
