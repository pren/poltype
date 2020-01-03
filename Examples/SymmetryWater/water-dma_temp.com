%RWF=/scratch/bdw2292/Gau-water/,100GB
%Nosave
%Chk=water-dma_temp.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

 water Gaussian Optimization on bme-nova.bme.utexas.edu

0 1
O	
H	
H	
	
