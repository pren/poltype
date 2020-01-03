%RWF=/scratch/bdw2292/Gau-acetamide/,100GB
%Nosave
%Chk=acetamide-dma_temp.chk
%Mem=700MB
%Nproc=1
#P MP2/6-311G** Sp Density=MP2 MaxDisk=100GB

 acetamide Gaussian Optimization on bme-nova.bme.utexas.edu

0 1
O	
N	
C	
C	
H	
H	
H	
H	
H	
	
