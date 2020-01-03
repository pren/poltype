%RWF=/scratch/bdw2292/Gau-ammonia/,100GB
%Nosave
%Chk=ammonia-dma_temp.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

 ammonia Gaussian Optimization on bme-nova.bme.utexas.edu

0 1
N	
H	
H	
H	
	
