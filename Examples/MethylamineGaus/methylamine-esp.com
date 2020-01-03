%RWF=/scratch/bdw2292/Gau-methylamine/,20GB
%Nosave
%Chk=methylamine-esp.chk
%Mem=5GB
%Nproc=4
#P MP2/6-311++G(2d,2p) Sp Density=MP2 SCF=Save Guess=Huckel MaxDisk=20GB

 methylamine Gaussian SP Calculation on bme-nova.bme.utexas.edu

0  1
N	       0.751098    0.000000   -0.125814
C	      -0.706357    0.000000    0.017571
H	      -1.078685   -0.000036    1.053112
H	      -1.110710   -0.880985   -0.486208
H	      -1.110702    0.881025   -0.486143
H	       1.140279   -0.812602    0.347256
H	       1.140277    0.812602    0.347256
	
