%RWF=/scratch/bdw2292/Gau-methylamine/,20GB
%Nosave
%Chk=methylamine-dma.chk
%Mem=5GB
%Nproc=4
#P MP2/6-311G** Sp Density=MP2 MaxDisk=20GB

 methylamine Gaussian Optimization on bme-nova.bme.utexas.edu

0 1
N	       0.747683    0.000000   -0.124847
C	      -0.702951    0.000000    0.016393
H	      -1.050254   -0.000037    1.048304
H	      -1.113847   -0.874238   -0.474910
H	      -1.113839    0.874278   -0.474844
H	       1.130932   -0.798311    0.338513
H	       1.130931    0.798311    0.338514
	
