%RWF=/scratch/bdw2292/Gau-MOLECULE0/,100GB
%Nosave
%Chk=MOLECULE0-opt-14-13-11-12-340.chk
%Mem=20GB
%Nproc=6
#P opt=(,maxcycle=400) wB97XD/6-31G* MaxDisk=100GB

MOLECULE0 Rotatable Bond Optimization on g2-node38.bme.utexas.edu

0 1
 C    0.284804    4.147406   -2.462607
 C    1.487679    4.136638   -1.743367
 C    2.122166    2.912894   -1.452435
 C    1.471888    1.749339   -1.936537
 N    0.318431    1.738986   -2.617384
 C   -0.257120    2.923812   -2.872117
 C    3.389213    2.800093   -0.641698
 C    4.103468    3.860682   -0.062176
 C    5.209966    3.493566    0.714643
 N    5.597602    2.238791    0.932818
 C    4.850269    1.288116    0.336558
 N    3.788893    1.533447   -0.433244
 N    5.225432   -0.023007    0.553655
 C    4.496573   -1.259901    0.417597
 C    5.205454   -2.497155    0.358393
 C    4.440680   -3.666541    0.205695
 C    3.045382   -3.677980    0.087455
 C    2.366316   -2.456850    0.150242
 C    3.097980   -1.273984    0.339803
 N    0.955987   -2.266690    0.005684
 C   -0.045726   -3.132987   -0.362816
 C   -1.399578   -2.526221   -0.678392
 C   -1.545661   -1.276837   -1.305943
 C   -2.816115   -0.752379   -1.549983
 C   -3.981474   -1.456252   -1.193675
 C   -3.820267   -2.712984   -0.578510
 C   -2.553297   -3.248639   -0.334196
 C   -5.367941   -0.848408   -1.410893
 N   -5.900789    0.085726   -0.401852
 C   -5.357554    1.461057   -0.336901
 C   -4.211540    1.657084    0.688850
 N   -4.538406    1.200061    2.059372
 C   -5.307640    2.127056    2.898011
 C   -5.033438   -0.196229    1.992652
 C   -6.170257   -0.426082    0.962177
 O    0.118688   -4.341319   -0.421358
 C    6.719013   -2.595449    0.439118
 H   -0.223800    5.078418   -2.694595
 H    1.900093    5.087002   -1.413652
 H    1.913134    0.771792   -1.760250
 H   -1.192174    2.887639   -3.429201
 H    3.831665    4.903736   -0.168337
 H    5.813005    4.258320    1.203067
 H    6.211537   -0.074421    0.761726
 H    4.948016   -4.628753    0.145050
 H    2.495629   -4.598533   -0.066677
 H    2.578975   -0.327767    0.379604
 H    0.654447   -1.310105    0.128598
 H   -0.662663   -0.716692   -1.607345
 H   -2.890883    0.224440   -2.027888
 H   -4.695608   -3.286395   -0.274099
 H   -2.437231   -4.219568    0.140920
 H   -5.369532   -0.316731   -2.373751
 H   -6.097063   -1.667054   -1.497592
 H   -5.105589    1.811090   -1.298408
 H   -6.533743    2.382873    0.177587
 H   -3.910037    3.115463    0.737043
 H   -3.233056    1.097119    0.344288
 H   -6.313664    2.283028    2.492656
 H   -4.797241    3.094961    2.959201
 H   -5.395643    1.730349    3.916073
 H   -5.359875   -0.545379    3.063817
 H   -3.882753   -1.039853    1.580536
 H   -7.404198    0.384999    1.520520
 H   -6.478898   -1.481693    0.922936
 H    7.093945   -2.221005    1.402326
 H    7.202763   -2.009229   -0.354976
 H    7.087763   -3.625613    0.337482

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
25 28 29 35 F
25 28 29 30 F

