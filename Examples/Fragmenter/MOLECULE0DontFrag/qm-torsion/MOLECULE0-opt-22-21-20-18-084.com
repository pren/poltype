%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-22-21-20-18-084.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C    7.121215   -1.878008   -3.695825
 C    7.269018   -1.077637   -2.555082
 C    6.260218   -1.057634   -1.570419
 C    5.145661   -1.896773   -1.815993
 N    4.988862   -2.669250   -2.897924
 C    5.962477   -2.651837   -3.819596
 C    6.332414   -0.211310   -0.323360
 C    7.420221    0.601233    0.037349
 C    7.283148    1.302966    1.238975
 N    6.208976    1.250504    2.019893
 C    5.206088    0.455765    1.589415
 N    5.238001   -0.262764    0.463580
 N    4.092615    0.430741    2.413673
 C    2.851445   -0.300042    2.403822
 C    2.075686   -0.354551    3.601925
 C    0.873291   -1.077455    3.555561
 C    0.406548   -1.744043    2.417775
 C    1.173148   -1.674684    1.248313
 C    2.379089   -0.953724    1.258099
 N    0.833514   -2.306268    0.016276
 C   -0.161425   -3.204146   -0.264386
 C   -1.525109   -2.616040   -0.554350
 C   -1.709777   -1.393656   -1.219795
 C   -2.997705   -0.902762   -1.447467
 C   -4.138893   -1.610828   -1.025178
 C   -3.936679   -2.835604   -0.360376
 C   -2.653825   -3.340343   -0.138475
 C   -5.545908   -1.046445   -1.226509
 N   -6.077579   -0.081798   -0.247584
 C   -5.572393    1.308898   -0.263227
 C   -4.405210    1.579403    0.720620
 N   -4.690257    1.183489    2.119736
 C   -5.461560    2.135599    2.927563
 C   -5.152456   -0.225875    2.136820
 C   -6.304605   -0.534227    1.144341
 O    0.015416   -4.408996   -0.268936
 C    2.490571    0.309730    4.903847
 H    7.882439   -1.902164   -4.469969
 H    8.168081   -0.472617   -2.468313
 H    4.343668   -1.962159   -1.088856
 H    5.805276   -3.289407   -4.687952
 H    8.329561    0.694095   -0.543641
 H    8.087150    1.947169    1.593983
 H    4.270255    1.003266    3.225277
 H    0.257964   -1.143226    4.452305
 H   -0.524809   -2.297486    2.447624
 H    2.978552   -0.898452    0.362328
 H    1.453708   -2.134847   -0.762889
 H   -0.841331   -0.830243   -1.550215
 H   -3.110022    0.054940   -1.955927
 H   -4.791234   -3.412034   -0.006573
 H   -2.505309   -4.292438    0.365305
 H   -5.588877   -0.565648   -2.214407
 H   -6.256168   -1.885303   -1.260983
 H   -5.354537    1.619754   -1.252143
 H   -6.757692    2.224021    0.238119
 H   -4.137951    3.051887    0.689137
 H   -3.433884    1.033350    0.383845
 H   -6.480971    2.245118    2.540834
 H   -4.974003    3.117129    2.923780
 H   -5.514276    1.791893    3.966980
 H   -5.418290   -0.516927    3.176890
 H   -3.976900   -1.068075    1.722180
 H   -7.548225    0.262634    1.689589
 H   -6.586296   -1.636038    1.163355
 H    2.529010    1.403394    4.801170
 H    3.485144   -0.027703    5.228454
 H    1.802827    0.095390    5.733507

22 21 20 18 F
36 21 20 18 F
14 13 11 12 F
14 13 11 10 F
15 14 13 11 F
19 14 13 11 F
19 18 20 21 F
17 18 20 21 F
20 21 22 23 F
36 21 22 23 F
36 21 22 27 F
20 21 22 27 F
29 28 25 24 F
29 28 25 26 F
25 28 29 35 F
25 28 29 30 F

