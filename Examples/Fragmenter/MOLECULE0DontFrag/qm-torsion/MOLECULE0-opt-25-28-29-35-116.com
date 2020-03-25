%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-25-28-29-35-116.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C    0.088966    4.634640   -1.425587
 C    1.412799    4.490117   -0.987854
 C    1.946330    3.203874   -0.772533
 C    1.075076    2.122578   -1.055774
 N   -0.188808    2.238164   -1.482303
 C   -0.667834    3.479542   -1.653724
 C    3.353148    2.952965   -0.287446
 C    4.336206    3.932928   -0.077237
 C    5.582548    3.458903    0.348194
 N    5.865841    2.178467    0.571845
 C    4.853603    1.308937    0.370178
 N    3.633843    1.657936   -0.047403
 N    5.146137   -0.023136    0.622570
 C    4.392577   -1.244732    0.472402
 C    5.079177   -2.496496    0.454811
 C    4.299221   -3.653046    0.283186
 C    2.907017   -3.642137    0.135174
 C    2.245517   -2.410640    0.184205
 C    2.997206   -1.236916    0.353361
 N    0.833764   -2.207646    0.051342
 C   -0.178187   -3.070236   -0.299456
 C   -1.540254   -2.470397   -0.593897
 C   -1.710721   -1.216177   -1.205002
 C   -2.990914   -0.710650   -1.439962
 C   -4.143260   -1.446264   -1.105610
 C   -3.959798   -2.696771   -0.484891
 C   -2.682460   -3.209212   -0.242572
 C   -5.537619   -0.873061   -1.358770
 N   -6.041504    0.044193   -0.317308
 C   -7.081407   -0.446311    0.611693
 C   -8.517931   -0.184722    0.091942
 N   -8.800225    1.219424   -0.290912
 C   -9.195905    2.120643    0.798293
 C   -7.730428    1.713161   -1.192874
 C   -6.291465    1.455040   -0.678039
 O   -0.015865   -4.279785   -0.348363
 C    6.587579   -2.624829    0.582545
 H   -0.346558    5.616576   -1.585482
 H    1.995467    5.389345   -0.803648
 H    1.430627    1.102751   -0.955152
 H   -1.699221    3.547835   -1.995922
 H    4.185411    4.991577   -0.249694
 H    6.404865    4.153783    0.516797
 H    6.117636   -0.113162    0.880032
 H    4.790406   -4.624876    0.250099
 H    2.344331   -4.556963   -0.006178
 H    2.494555   -0.284055    0.392043
 H    0.539572   -1.248571    0.171964
 H   -0.840139   -0.628420   -1.486937
 H   -3.084399    0.273136   -1.899516
 H   -4.824925   -3.291568   -0.192065
 H   -2.550120   -4.182310    0.224145
 H   -5.548391   -0.349521   -2.325048
 H   -6.245524   -1.707393   -1.467627
 H   -6.909940   -1.465064    0.861235
 H   -6.948605    0.359850    1.932319
 H   -9.426672   -0.582842    1.054271
 H   -8.709567   -1.038156   -1.142433
 H   -8.374831    2.259115    1.511092
 H  -10.062489    1.713134    1.331222
 H   -9.481350    3.098882    0.394580
 H   -7.900406    2.750061   -1.422206
 H   -7.855347    0.902518   -2.525553
 H   -6.102845    2.303324    0.565650
 H   -5.412913    1.856026   -1.563231
 H    6.937034   -2.275720    1.564445
 H    7.108956   -2.033198   -0.183232
 H    6.941212   -3.659240    0.472007

25 28 29 35 F
25 28 29 30 F
14 13 11 12 F
14 13 11 10 F
15 14 13 11 F
19 14 13 11 F
19 18 20 21 F
17 18 20 21 F
22 21 20 18 F
36 21 20 18 F
20 21 22 23 F
36 21 22 23 F
36 21 22 27 F
20 21 22 27 F
29 28 25 24 F
29 28 25 26 F

