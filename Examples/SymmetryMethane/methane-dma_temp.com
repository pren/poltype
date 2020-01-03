%RWF=/scratch/bdw2292/Gau-methane/,100GB
%Nosave
%Chk=methane-dma_temp.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

 methane Gaussian Optimization on bme-nova.bme.utexas.edu

0 1
C	
H	
H	
H	
H	
	
