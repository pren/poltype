%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-dma.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

 methanol Gaussian Optimization on node36.bme.utexas.edu

0 1
O	       0.753279    0.123530    0.000000
C	      -0.669155   -0.018939    0.000000
H	      -1.028050   -0.545736    0.891067
H	      -1.028048   -0.545754   -0.891057
H	      -1.081967    0.990135   -0.000011
H	       1.126767   -0.773249    0.000001
	
