%RWF=/scratch/bdw2292/Gau-methanol/,100GB
%Nosave
%Chk=methanol-dma_temp.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

 methanol Gaussian Optimization on bme-nova.bme.utexas.edu

0 1
O	
C	
H	
H	
H	
H	
	
