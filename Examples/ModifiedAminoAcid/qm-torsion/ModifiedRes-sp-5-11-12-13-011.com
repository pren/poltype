%RWF=/scratch/bdw2292/Gau-ModifiedRes/,100GB
%Nosave
%Chk=ModifiedRes-sp-5-11-12-13-011.chk
%Mem=20GB
%Nproc=6
#P MP2/6-311++G** SP SCF=(qc,maxcycle=800) Guess=Indo MaxDisk=100GB Pop=NBORead

ModifiedRes Rotatable Bond SP Calculation on g2-node38.bme.utexas.edu

0 1
 C    0.864750    1.951204   -0.388722
 O    1.426133    2.168313    0.692992
 N    0.425007    0.709508   -0.746480
 H    0.101659    0.567355   -1.698587
 C    0.428826   -0.424085    0.196526
 H    0.249766   -0.016680    1.202777
 C    1.813168   -1.104116    0.169650
 O    1.952926   -2.163392   -0.445959
 H   -0.476461   -1.847942   -1.150837
 H   -0.552338   -2.272732    0.585223
 C   -0.667813   -1.467412   -0.143367
 S   -2.424959   -0.881168   -0.148085
 C   -2.396332    0.818995   -0.029732
 N   -2.362033    2.000370    0.071934
 N    2.800408   -0.461544    0.846636
 H    0.706165    2.732262   -1.148133
 H    2.613729    0.469862    1.211491
 H    3.726988   -0.866041    0.857396
