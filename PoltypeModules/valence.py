

##################################################################
#
# Title: valence.py
# Description: Assignment of valence parameters for
#               the AMOEBA force field
#
# Copyright:            Copyright (c) Johnny C. Wu,
#                   Gaurav Chattree, & Pengyu Ren 2010-2011
#
# Poltype is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 3
# as published by the Free Software Foundation.
#
# Poltype is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Force Field X; if not, write to:
# Free Software Foundation, Inc.
# 59 Temple Place, Suite 330
# Boston, MA 02111-1307  USA
#
##################################################################
import openbabel
import math
import sys
import os
radian = 57.29577951308232088

class Valence():
    def __init__(self,versionnum,logfname):
        self.sp = openbabel.OBSmartsPattern()
        self.missed_torsions = []
        self.versionnum=versionnum
        self.logfh = open(logfname,"a")
        self.defopbendval = 0.20016677990819662



    def setidxtoclass(self, symmclass):
        self.idxtoclass = symmclass

    def get_mt(self):
        return self.missed_torsions


    
    def opbset (self,smarts, opbval, opbhash, mol):
        """
        Intent: Set out-of-plane bend (opbend) parameters using Smarts Patterns
        Referenced By: gen_valinfile
        """
        opbsetstr = ""
        sp = openbabel.OBSmartsPattern()
        openbabel.OBSmartsPattern.Init(sp,smarts)
        sp.Match(mol)
        for ia in sp.GetMapList():
            iteratomatom = openbabel.OBAtomAtomIter(mol.GetAtom(ia[1]))
            for ib in iteratomatom:
                opbkey = '%d %d 0 0' % (ib.GetIdx(), ia[1])
                if ib.GetIdx() == ia[0]:
                    if ((opbkey not in opbhash) or (opbhash[opbkey][1] == False)):
                        opbhash[opbkey] = [opbval, True,smarts]
                else:
                    if opbkey not in opbhash:
                        opbhash[opbkey] = [self.defopbendval, False,smarts]
    
    def gen_valinfile (self,mol,rotbndlist):
        """
        Intent: Find aromatic carbon and bonded hydrogens to correct polarizability
        Find out-of-plane bend values using a look up table
        Output a list of rotatable bonds (found in get_torlist) for valence.py
        Input:
            mol: OBMol molecule object
        Output:
            opbhash.items(): list of opbend values
            rotbndprmlist: rotatable bonds for valence.py. 
                           This lets valence.py know to set certain torsions as 0.
        Referenced By: main
        Description: -
        """
        
        #Search for structures that require opbend parameters
        # OP-Bend parameters is between first and second atom in search string
        opbhash = {}      #Create empty dictionary
        # 51 54 0 0 amide C(-N)(=O)
        self.opbset('O=CN', 1.7, opbhash, mol)
        self.opbset('C(-N)(=O)', 1.0, opbhash, mol)
        self.opbset('[OX1]=N[Oh1]', 0.2, opbhash, mol)
        self.opbset('[Oh1]N=[OX1]', 0.2, opbhash, mol)
    
        #self.opbset('C-C(O)', 1.7, 1, opbhash, mol)
    
        # 37 51 0 0 acetamide [CH3](-C=O)
        # 37 60 0 0 acetaldehyde [CH3](-C=O)
        self.opbset('[CH3](-C=O)', 0.590, opbhash, mol)
        # 37 54 0 0 methylformamide [CH3](-NC=O)
        self.opbset('[CH3](-NC=O)', 0.180, opbhash, mol)
    
        # 52 51 0 0 formamide HC=O
        self.opbset('[#1]C=O', 1.950, opbhash, mol)
    
        # 53 51 0 0 amide O=C
        # 53 60 0 0 carboxylic acid/aldehyde O=C
        self.opbset('O=C', 0.650, opbhash, mol)
    
        # 54 51 0 0 amide NC=O
        self.opbset('NC=O', 1.500, opbhash, mol)
        # 55 54 0 0 amide HN
        self.opbset('[#1]NC=O', 0.080, opbhash, mol)
        # 58 60 0 0 carboxylic acid [OH](C=O)
        self.opbset('[OH](C=O)', 1.500, opbhash, mol)
        # 61 51 0 0 aldehyde HC=O for 3-formylindole
        # 61 60 0 0 formic acid/aldehyde HC=O
        self.opbset('[#1]C=O', 1.950, opbhash, mol)
        # 76 89 0 0 pyridinium cnc
        self.opbset('cnc', 0.150, opbhash, mol)
        # 77 76 0 0 benzene Hc
        # 79 78 0 0 ethylbenzene/phenol/toluene/p-cresol Hc1aaaaa1
        self.opbset('[#1]c', 0.210, opbhash, mol)
    
        # 80 83 0 0 3-formylindole n1caaa1
        self.opbset('n1caaa1', 0.200, opbhash, mol)
        # 83 83 0 0 3-formylindole c1caaa1
        self.opbset('c1caaa1', 0.200, opbhash, mol)
        # 84 83 0 0 3-ethylindole [CD4]c1aaaa1
        self.opbset('[CD4]c1aaaa1', 0.200, opbhash, mol)
        # 78 88 0 0 benzamidine C(c)(N)(=N)
        self.opbset('cC(N)(=N)', 0.020, opbhash, mol)
        # 83 51 0 0 3-formylindole cC=O
        self.opbset('c[CH]=O', 0.590, opbhash, mol)
        # 85 51 0 0 3-formylindole O=[CH]c
        self.opbset('O=[CH]c', 0.650, opbhash, mol)
        # 86 88 0 0 benzamidine N~[C](~N)(c)
        self.opbset('[NH1,NH2]-,=[C]([NH1,NH2])(c)', 0.020, opbhash, mol)
        # 87 86 0 0 benzamidine HN(~C~N)
        self.opbset('[#1]N(~C~N)', 0.180, opbhash, mol)
        # 88 78 0 0 benzamidine C(c)(-N)(=N)
        self.opbset('C(c)(-N)(=N)', 0.100, opbhash, mol)
        # 88 86 0 0 benzamidine C(~N)(~N)c
        self.opbset('C(~N)(~N)c', 0.050, opbhash, mol)
        # 89 76 0 0 pyridinium nc
        self.opbset('nc', 0.250, opbhash, mol)
        # 90 89 0 0 Hn
        self.opbset('[#1]n', 0.150, opbhash, mol)
        # 30 78 0 0 alkane C - aromatic C [CH2;X4]c
        # 37 78 0 0 ethylbenzene [CH2;X4]c
        self.opbset('[CH2;X4]c', 0.200, opbhash, mol)
        # 35 78 0 0 phenol [OH]c
        self.opbset('[OH]c', 0.200, opbhash, mol)
        # 51 83 0 0 [CH](c)=O
        self.opbset('[CH](c)=O', 0.200, opbhash, mol)
        # 74 73 0 0 tricyanomethide C(C(C#N)(C#N))#N
        self.opbset('C(C(C#N)(C#N))#N', 0.200, opbhash, mol)
        # 76 76 0 0 benzene cc
        # 78 78 0 0 ethylbenzene cc
        self.opbset('cc', 0.200, opbhash, mol)
        #self.opbset('[#6D3][*]', 0.200, opbhash, mol)
    
        #print('hash items ',opbhash.items())
    
    
        rotbndprmlist = []
        for rotbnd in rotbndlist.values():
            for rotbndprm in rotbnd:
                rotlist=list(rotbndprm)
                rotbndprmlist.append(rotlist)
        return opbhash.items(),rotbndprmlist



    def vdwguess(self, mol):
        #self.idxToClassInit(xyzfname)
        found = []
        vals = []
        dfltrad = 1.0
        dflteps = .1
        dfltred = 0
        #many of these can be merged

        vdwparamvals3 = dict({ \
        

        #91   C    "Carbon Tetrachloride CCl4" 
        '[C][Cl][Cl][Cl][Cl]' : [3.898,.319], \

        #92   C    "Chloroform CHCl3" 
        '[CH][Cl][Cl][Cl]' : [3.898,.340], \
        #93   C    "Dichloromethane CH2Cl2" 
        '[CH2][Cl][Cl]' : [3.898,.362], \
        #94   C    "Methane, chloro- CH3Cl"
        '[CH3][Cl]' : [3.898,.413], \

        #37   C    "Ethanol CH3"   Same as Ethane CH3
        '[CH3]' : [3.820, .1010], \
        #24   C    "Ethane CH3"
        #'[CH3]' : [3.820, .1010], \

        #38   H    "Ethanol H3C"
        '[#1][C;D4][OH]' : [2.960, .0240, .92], \

        #60   C    "Formic Acid C=O" (check) (should it be [C]~[*;D2]?)
        '[CH](=O)' : [3.780, .1060], \
        'C(S)' : [3.780, .1060], \
        })

        vdwparamvals2 = dict({ \

        #21   N    "Dinitrogen N2"
        '[#7]([#7])' : [3.71, .08, .99], \

        #22   C    "Methane CH4"
        '[CH4]' : [3.780, .1010], \

        #23   H    "Methane H4C"
        '[#1]([CH4])' : [2.900, .022, .9], \

        #Ren, 2011 JCTC "Terminal H3C"
        '[#1][CH3]' : [2.960, .0240, .92], \

        #25   H    "Ethane H3C"
        '[#1][CH3][CH3]' : [2.960, .0240, .94], \

        #26   C    "Alkane -CH2-" (not needed, same as 37)
        #'[C;H2]' : [3.820, .1010], \

        #27   H    "Alkane -H2C-"
        '[#1]([CH2])' : [2.98, .024, .94], \

        #28   C    "Alkane >CH-"
        '[CH1]' : [3.65, .1010], \

        #29   H    "Alkane -HC<"
        '[#1]([CH1;D4])' : [2.98, .024, .94], \

        #30   C    "Alkane >C<"
        '[CH0;D4]' : [3.6, .104], \

        #31   OW   "Water O"
        '[O;D2;H2]' : [3.405, .110], \

        #32   HW   "Water H2O"
        '[#1]([O;D2;H2])' : [2.655, 0.0135, .91], \

        #33   C    "Methanol CH3"
        '[CH3]([OH1])' : [3.760, .1010], \

        #34   H    "Methanol H3C" (check) !!!
        '[#1][C;D4][OH]' : [2.870, .024, .91], \

        #35   O    "Methanol O (check)
        '[O;D2][#6]' : [3.405, .1100], \

        #36   H    "Methanol HO"
        '[#1][O;D2][#6]' : [2.655, .0135, .91], \

        #39   H    "Propanol Me-CH2" (check) (should this be moved, compare wtih #47); in amoeba_new_v2, this is used for HC2-XH in propanol and propylamine. But #47 or #34 is better. For the other H2C-Ch3, this is fine. Not sureif polytype distinguish different CH2 (probably did but we may combined them).
        '[#1]([CH2]([CH3]))' : [2.980, .0240, .92], \
        #I fee like assigning 39 to atom #96 isn't correct, should have assigned it 47,
        #to separate the two i put N in a ring.
        '[#1]([CH3]([N;R]))' : [2.980, .0240, .92], \

        #76   C    "Benzene C"
        'c' : [3.800, .0890], \

        #77   H    "Benzene HC"
        '[#1](c)' : [2.980, .0260, .92], \

        #47   H    "Ethyl Amine H2C" (check) (should this be moved, compare to #39); this should also be the one assigned to methyl amine.
        '[#1][C;D4][N,c;D3]' : [2.880, 0.0240, .91], \
        })

        vdwparamvals1 = dict({ \

        #1   He   "Helium Atom He"
        '[#2]' : [2.99, .0080], \

        #2   Ne   "Neon Atom Ne"
        '[#10]' : [3.150, 0.073], \

        #3   Ar   "Argon Atom Ar"
        '[#18]' : [3.820, 0.26], \

        #4   Kr   "Krypton Atom Kr"
        '[#36]' : [4.090, .359], \

        #5   Xe   "Xenon Atom Xe"
        '[#54]' : [4.370, 0.498], \

        #6   Li+  "Lithium Ion Li+" (check) (check all with ;v0, is it really needed?)
        '[#3;v0;+]' : [2.380, 0.08], \

        #7   Na+  "Sodium Ion Na+"
        '[#11;v0;+]' : [3.020, 0.26], \

        #8   K+   "Potassium Ion K+"
        '[#19;v0;+]' : [3.710, .35], \

        #9   Rb+  "Rubidium Ion Rb+"
        '[#37;v0;+]' : [4.140, .440], \

        #10   Cs+  "Cesium Ion Cs+"
        '[#55;v0;+]' : [4.37, .53], \

        #11   Mg+  "Magnesium Ion Mg+2"
        '[#12;v0;++]' : [2.55, .85], \

        #12   Ca+  "Calcium Ion Ca+2"
        '[#20;v0;++]' : [3.15, 1.6], \

        #13   F-   "Fluoride Ion F-"
        '[#9;v0;-]' : [3.4, 0.25], \

        #14   Cl-  "Chloride Ion Cl-"
        '[#17;v0;-]' : [4.13, .34], \

        #15   Br-  "Bromide Ion Br-"
        '[#35;v0;-]' : [4.38, .43], \

        '[#35]' : [3.98, .43], \

        #16   I-   "Iodide Ion I-"
        '[#53;v0;-]' : [4.66, .52], \

        #17   B    "Tetrafluoroborate B"
        '[#5]([#9])([#9])([#9])([#9])' : [3.9, .1], \
        '[#5]' : [3.9, .1], \

        #18   F    "Tetrafluoroborate F"
        '[#9]([#5]([#9])([#9])([#9]))' : [3.22, .12], \

        #19   P    "Hexafluorophosphate P"
        '[#15]([#9])([#9])([#9])([#9])([#9])([#9])' : [4.53, .35], \

        #20   F    "Hexafluorophosphate F"
        '[#9]([#15]([#9])([#9])([#9])([#9])([#9]))' : [3.22, .12], \

        #40   C    "isoPropanol >CH-"
        '[CH1]([CH3])([CH3])([OH1])' : [3.650, .1010], \

        #41   H    "Methyl Ether H3C"
        '[#1]([CH3]([O]([CH2,CH3,c])))' : [2.89, .024, .91], \

        #42   N    "Ammonia N"
        '[NH3]' : [3.71, .1050], \

        #43   H    "Ammonia H3N"
        #'[#1]([N;D3;H3])' : [2.700, .0200, .91], \
        '[#1]([N;D3])' : [2.700, .0200, .91], \

        #44   M    "Amine Lone Pair" (needs_work)
        #45   N    "Ammonium Ion N+"
        '[#7;D4]' : [3.71, .1050], \

        #46   H    "Ammonium Ion H4N+"
        '[#1]([N;D4])' : [2.48, .0115, .90], \

        #48   N    "Ethyl Amine N"
        '[N]([C]([#1]))' : [3.71, .1050], \

        #49   H    "Ethyl Amine H2N"
        '[#1]([N;D3]([C]([#1])))' : [2.7, .02, .91], \
        '[#1]([n;D3])' : [2.59, .0200, .91], \

        #50   H    "Pyrrolidine C-CH2-C" (check)
        '[#1]([CH2]([CH2]([N])))' : [2.96, .0220, .92], \
        '[#1]([CH2]([N]))' : [2.96, .0220, .92], \

        #51   C    "Formamide C=O" (check)
        '[C](=O)([N,c])' :  [3.820, .1060], \

        #52   H    "Formamide HCO"
        '[#1](C(=O)(N))' : [2.800, 0.0260, .91], \

        #53   O    "Formamide O"
        '[O](=C)' : [3.300, .1120], \

        #54   N    "Formamide N"
        '[N](C=O)' : [3.710, .1100], \

        #55   H    "Formamide H2N"
        '[#1]([N](C=O))' : [2.590, .0220, .90], \

        #56   H    "Acetamide H3C"
        '[#1]([CH3](C(=O)(N)))' : [2.950, .0260, .91], \

        #57   H    "NMeFormamide H3C" (check) (maybe i should change [CH3] -> [C])
        '[#1]([CH3](N(C(=O))))' : [2.930, .0260, .91], \

        #58   O    "Formic Acid OH"
        '[OH1](C=O)' : [3.405, .1100], \

        #59   H    "Formic Acid HO"
        '[#1]([OH1](C=O))' : [2.655, .0150, .91], \

        #61   H    "Formic Acid HC=O"
        '[#1](C=O)' : [2.920, .0300, .92], \

        #62   H    "Acetic Acid H3C"
        '[#1]([CH3](C=O))' : [2.980, .0240, .94], \

        #63   S    "Hydrogen Sulfide S"
        '[SH2]' : [4.005, .3550], \

        #64   H    "Hydrogen Sulfide H2S" (not needed, same as 67)
        #'[#1]([S;H2])' : [2.770, .0240, .96], \

        #65   H    "Methyl Sulfide H3C"
        '[#1]([C][S;D2])' : [2.870, .0330, .90], \

        #66   S    "Methyl Sulfide S"
        '[SH]C' : [4.005, .3550], \

        #67   H    "Methyl Sulfide HS"
        '[#1][#16;D2]' : [2.770, .0240, .96], \

        #68   C    "Ethyl Sulfide CH3"
        '[CH3]([CH2](S))' : [3.820, .1040], \

        #69   H    "Ethyl Sulfide H3C"
        '[#1]([CH3]([CH2](S)))' : [2.980, .0240, .92], \

        #70   H    "Methyl Sulfonate H3C"
        '[#1]([C](S(=O)(=O)([O-])))' : [2.910, .0330, .90], \

        #71   S    "Methyl Sulfonate SO3-"
        'S(=O)(=O)([O-])' : [3.910, .3850], \

        #72   O    "Methyl Sulfonate SO3-" (check)
        #'[O-](S(=O)(=O))' : [3.510, .1120], \
        '[O;D1](~S)' : [3.510, .1120], \

        #73   C    "Tricyanomethide >C-"
        '[C](C#N)(C#N)(C#N)' : [3.820, .1060], \

        #74   C    "Tricyanomethide CN"
        '[C](#N)(C(C#N)(C#N))' : [3.820, .1060], \

        #75   N    "Tricyanomethide CN"
        '[N](#C(C(C#N)(C#N)))' : [3.690, .1100], \

        #78   C    "Ethylbenzene C1-CH2"
        '[cH0]' : [3.800, .0910], \
        'c([cH0])' : [3.800, .0910], \
        'c(c([cH0]))' : [3.800, .0910], \
        'c(c(c([cH0])))' : [3.800, .0910], \

        #79   H    "Ethylbenzene H2" (not needed, same values as 77)
        #'[#1](c(cH0))' : [2.890, .0260, .92], \
        #'[#1](c(c(cH0)))'
        #'[#1](c(c(c(cH0))))'

        #80   N    "Imidazole NH" (merged with 89 to make a less specific smarts string)
        #'n([#1])' : [3.710, .1050], \
        'n' : [3.710, .1050], \

        #81   C    "Imidazole N-C-N"
        'c(n)' : [3.780, .1010], \

        #82   H    "Imidazole HC"
        '[#1](c(n))' : [3.00, .0240, .94], \

        #83   C    "Indole C1" (check)
        'cnccccc' : [3.800, .1010], \
        'ccncccc' : [3.800, .1010], \
        'cccnccc' : [3.800, .1010], \
        'ccccncc' : [3.800, .1010], \

        #84   C    "3-Ethylindole CH2" (check)
        '[CH2](cnccccc)([CH3])' : [3.820, .1040], \
        '[CH2](ccncccc)([CH3])' : [3.820, .1040], \
        '[CH2](cccnccc)([CH3])' : [3.820, .1040], \
        '[CH2](ccccncc)([CH3])' : [3.820, .1040], \
        '[CH3]([CH2](cnccccc))' : [3.820, .1040], \
        '[CH3]([CH2](ccncccc))' : [3.820, .1040], \
        '[CH3]([CH2](cccnccc))' : [3.820, .1040], \
        '[CH3]([CH2](ccccncc))' : [3.820, .1040], \

        #85   O    "3-Formylindole O=C" (check) (can the top 4 be reduced to the last 1
        #                 since 85 is the only one like this?)
        #'O(=C(cnccccc))' : [3.300, .1140], \
        #'O(=C(ccncccc))' : [3.300, .1140], \
        #'O(=C(cccnccc))' : [3.300, .1140], \
        #'O(=C(ccccncc))' : [3.300, .1140], \
        'O(=C(c))' : [3.300, .1140], \
        # Carboxylate ion O-
        '[OD1]~C~[OD1]' : [3.450, .1120], \

        #86   N    "Benzamidine N"
        'N(~C(c))' : [3.710, .1100], \

        #87   H    "Benzamidine HN"
        '[#1](N(~C(c)))' : [2.590, .0220, 0.90], \

        #88   C    "Benzamidine N-C-N"
        'C(N)(=N)(c)' : [3.650, .1010], \

        #89   N    "Pyridinium N" (not needed, same as 80)
        #'[n;+](c)' : [3.710, .1050], \

        #90   H    "Pyridinium HN" (check) (could merge with 43)
        '[#1]([n;+])' : [2.43, .0200, .91], \
        })

        vdwvals1 = dict({ \
        '[#1](c)' : [2.980, .026, .92], \
        # HC+ 
        '[#1][#6;D3]' : [2.583, .0260, .92], \
        '[#1]([#6;D4]([!#1])([#1])([#1]))' : [2.96, .024, .92], \
        '[#1]([#6;D4]([!#1])([!#1])([#1]))' : [2.98, .024, .94], \
        '[#1]([#6]([!#1])([!#1])([!#1]))' : [2.98, .024, .94], \
        # HN+ 
        '[#1]([#7]([#6]=[#8]))' : [2.59, .022, .90], \
        # HO+
        '[#1][#8;D3]' : [2.398, .0150, .91], \
        '[#1]([#8;D2]([#6;D4]([#6,#1])([#6,#1])([#6,#1])))' : [2.665, .0135, .91], \
        '[#1]([#8;D2]([#6;D3]([#6,#1])([#6,#1])))' : [2.665, .0135, .91], \
        '[#1]([#8;D2]([#6;D2]([#6])))' : [2.665, .0135, .91], \
        # HP+
        '[#1][#15;D4]' : [2.682, .0260, .92], \
        # HS+
        '[#1][#16;D3]' : [2.49, 0.024, .96], \
        # C+ ion
        '[#6;D3]([*])([*])([*])' : [3.42, .101], \
        'c' : [3.8, .091], \
        '[#6;D3](=[#8])' : [3.82, .106], \
        '[#6;D4]([!#1])([!#1])([!#1])([#1])' : [3.65, .101], \
        '[#7;D3]([#6]=[#8])' : [3.71, .11], \
        '[#8;D1](~[#16])' : [3.51, .112], \
        '[#8;D2](~[#15])' : [3.405, .112], \
        # [O-][*] ion (single bond, valence 1)
        '[#8;D1][*]' : [3.63, .112], \
        # [S-][*] ion
        '[#16;D1][*]' : [4.406, .3550], \
        })

        vdwvals2 = dict({ \
        '[#1]([#6])' : [2.78, .026, 0.91], \
        '[#1]([#7])' : [2.7, 0.02, .91], \
        '[#1]([#8])' : [2.665, 0.015, 0.91], \
        '[#1]([#16])' : [2.77, 0.024, .96], \
        'c' : [3.8, .091], \
        '[#7;D3]' : [3.71, .105], \
        '[#7;D2]' : [3.71, .11], \
        '[#8;D1]=[#6]' : [3.3, .112], \
        '[#8;D1]=[#7]' : [3.3, .112], \
        '[#8;D1]=[#15]' : [3.36, .112], \
        '[#9;v0]' : [3.4, .25] \
        })

        vdwvals3 = dict({ \
        '[#6;D3]([*])([*])(=[*])' : [3.8, .089], \
        '[#8;D1]' : [3.3, .112], \
        '[#8;D2]' : [3.405, .11], \
        })

        vdwvals4 = dict({ \
        '[#1]' : [2.98,.026,.92], \
        '[#5]' : [3.9, .1], \
        '[#6]' : [3.82, .101], \
        '[#7]' : [3.71, .105], \
        '[#8]' : [3.405, .11], \
        #'[#9]' : [3.22, .12], \
        '[#9]' : [3.22, .13], \
        '[#11]' : [3.02, .26], \
        '[#12]' : [2.55, .85], \
        '[#15]' : [4.45, .39], \
        '[#16]' : [4.005, .355], \
        #'[#17]' : [3.73, .34], \
        #'[#17]' : [3.73, .24], \
        '[#17]' : [3.898, .413], \
        '[#19]' : [3.71, .35], \
        '[#20]' : [3.15, 1.6], \
        #'[#35]' : [3.98, .43], \
        '[#35]' : [3.83, .83], \
        '[#53]' : [4.21, .52] \
        })

        vdwvals5 = dict({ \
        '*' : [dfltrad, dflteps, dfltred], \
        })
        vals.append(vdwvals5)
        vals.append(vdwvals4)
        vals.append(vdwvals3)
        vals.append(vdwvals2)
        vals.append(vdwvals1)
        vals.append(vdwparamvals3)
        vals.append(vdwparamvals2)
        vals.append(vdwparamvals1)
        d = dict()
        for v in vals:
            for skey in iter(v):
                openbabel.OBSmartsPattern.Init(self.sp,skey)
                self.sp.Match(mol)
                for ia in self.sp.GetMapList():
                    #key1 = '%d ' % idxtoclass.get(ia[0])
                    key1 = self.idxtoclass[ia[0] - 1]
                    if(len(v[skey]) == 3):
                        key2 = 'vdw%10d%8.4f%9.4f%6.3f' % (key1, v[skey][0], v[skey][1], v[skey][2])
                    else:
                        key2 = 'vdw%10d%8.4f%9.4f' % (key1, v[skey][0], v[skey][1])
                    string='SOLUTE '+str(key1)+' '+skey+' '+str(v[skey][0])+' '+str(v[skey][0])+'\n'
                    d.update({key1 : key2})
                    d.update({str(key1)+'_'+'SOLUTE':string})
        x = []
        for v in dict.values(d):
            x.append(v)
        return x

    def bondguess(self, mol):
        found = []
        vals = []
        defaultBConstVal = 350

        bondparamvals3 = dict({ \
        #76 76
        'cc' : [610.9, 1.3820], \

        #37 38
        '[C]-[#1]' : [385.0, 1.112], \

        #37 78
        '[C](c)' : [453.2, 1.499], \
        })

        bondparamvals2 = dict({ \
        #34 37 (check) (does this need to be moved)
        '[#1]-[C]([OH1])' : [385.0, 1.1120], \

        #37 37
        '[C]-[C]' : [453.0, 1.5247], \

        #35 37
        '[O]-[C]' : [465.1, 1.4130], \

        #37 48
        '[C]-[N]' : [381.3, 1.4655], \

        #51 53
        '[C]=[O]' : [601.8, 1.2183], \

        #53 60
        '[O](=C)' : [705.0, 1.2255], \

        #80 83 (not needed, same as 76-89)
        #'nc' : [653.9, 1.355], \

        #81 81
        'c(c(n))(n)' : [539.6, 1.3520], \

        #51 61 (less specific than 51-52)
        '[C](-[#1])(=[O])' : [314.4, 1.0907], \

        #60 66
        '[C]-[S]' : [235.8, 1.8250], \
        '[#16]~[C]' : [235.8, 1.8250], \

        #63 64
        '[S]-[#1]' : [278.4, 1.3420], \

        #76 77
        'c([#1])' : [370.5, 1.0790], \

        #76 89
        'cn' : [653.9, 1.355], \

        #37 47
        '[C](-[#1])(N)' : [385.0, 1.0860], \

        #37 81
        '[C](c(n))' : [453.2, 1.493], \
        })

        bondparamvals1 = dict({ \
        #17 18
        '[#5]-[#9]' : [320.0, 1.39], \

        #19 20
        '[#15]-[#9]' : [350.0, 1.626], \

        #21 21
        '[#7]-[#7]' : [1613.0, 1.0980], \

        #22 23
        '[CH4]-[#1]' : [395.5, 1.0835], \

        #24 24
        '[CH3]-[CH3]' : [323.0, 1.5247], \

        #24 25
        '[CH3]-[#1]' : [341.0, 1.1020], \

        #24 26
        '[CH3]-[CH2]' : [323.0, 1.5247], \

         #24 28
        '[CH3]-[CH1]' : [323.0, 1.5247], \

         #26 26 '[CH2]-[CH2]' : [323.0, 1.5247], \

        #26 27
        '[CH2]-[#1]' : [341.0, 1.1120], \

        #28 29
        '[CH1]-[#1]' :     [341.0, 1.1120], \

        #30 78
        '[CHO](c)' : [453.2, 1.4950], \
        #(check) these are probably unnecessary because a 'c' only has a total of 3 bonds
        #'[CHO](c([cH0]))' : [453.2, 1.4950], \
        #'[CHO](c(c([cH0])))' : [453.2, 1.4950], \
        #'[CHO](c(c(c[cH0])))' : [453.2, 1.4950], \

        #31 32
        '[OH2]-[#1]' : [529.6, .9572], \

        #33 34
        '[CH3](-[#1])([OH1])' : [385.0, 1.1120], \

        #33 35
        '[CH3](-[OH1])' : [500.1, 1.4130], \

        #34 40
        '[#1]-[CH1]([CH3])([CH3])([OH1])' : [341.0, 1.1120], \

        #35 36
        '[O](-[#1])([#6])' : [615.9, .9670], \

        #35 40
        '[O]-[CH1]([CH3])([CH3])' : [410.1, 1.4130], \

        #35 78
        '[O](c)' : [676.6, 1.3550], \

        #37 39 (not needed, same as 37-38)
        #'[C]-[#1]' : [385.0, 1.112], \

        #37 40 (check) (why did i include the OH1 ??)
        '[C][CH1]' : [323.0, 1.5247], \

        #37 41
        '[C](-[#1])([O]([CH2,CH3,c]))' : [378.0, 1.1120], \

        #37 50 (check)
        '[CH2]([#1])([N]([CH2]))([CH2])' : [2.96, .0220, .92], \
        '[CH2]([#1])([CH2])([N]([CH2]))' : [2.96, .0220, .92], \

        #37 51
        '[C]-[C](=[O])' : [345.3, 1.5090], \

        #37 54
        '[C]-[N](C=O)' : [374.8, 1.4460], \

        #37 56 (not needed, same as 37-62)
        #'[C](-[#1])(C(=O)(N))' : [341.0, 1.1120], \

        #37 57
        '[C](-[#1])(N(C=O))' : [341.0, 1.1120], \

        #37 60
        #'[C]-[C](=[O])' : [345.3, 1.5090], \ (not needed, same as 37-51)
        '[C]-[C](-[S])' : [345.3, 1.5090], \

        #37 62
        '[C](-[#1])(C=O)' : [341.0, 1.1120], \

        #37 70
        '[C](-[#1])(S(=O)(=O)([O-]))' : [341.0, 1.1120], \

        #37 71
        '[C]-[S](=O)(=O)([O-])' : [220.0, 1.8015], \

        #38 84
        '[#1]-[C](cnccccc)' : [341.0, 1.112], \
        '[#1]-[C](ccncccc)' : [341.0, 1.112], \
        '[#1]-[C](cccnccc)' : [341.0, 1.112], \
        '[#1]-[C](ccccncc)' : [341.0, 1.112], \

        #42 43
        '[NH3]-[#1]' : [461.9, 1.015], \

        #42 44 (needs_work)

        #43 80 (needs_work) (two possible bond values, chose 2nd one)
        '[#1](n)' : [467.6, 1.030], \

        #44 48 (needs_work)

        #44 80 (needs_work)

        #45 46
        '[N;D4;H4;+]-[#1]' : [461.9, 1.015], \

        #48 49
        '[N](-[#1])([C]([#1]))' : [515.9, 1.01], \

        #51 52
        '[C](-[#1])(=[O])([N])' : [356.4, 1.1004], \

        #51 54
        '[C](-[N])(=[O])' : [482.0, 1.3639], \

        #51 83 (check) (could possibly combine with the other bonds with these values)
        '[C](cnccccc)(=O)' : [345.3, 1.5090], \
        '[C](ccncccc)(=O)' : [345.3, 1.5090], \
        '[C](cccnccc)(=O)' : [345.3, 1.5090], \
        '[C](ccccncc)(=O)' : [345.3, 1.5090], \

        #51 85
        '[C](=O)(cnccccc)' : [705.0, 1.2053], \
        '[C](=O)(ccncccc)' : [705.0, 1.2053], \
        '[C](=O)(cccnccc)' : [705.0, 1.2053], \
        '[C](=O)(ccccncc)' : [705.0, 1.2053], \

        #54 55
        '[N](-[#1])(C=O)' : [542.0, 1.0034], \

        #58 59
        '[OH1](-[#1])(C=O)' : [514.4, .9737], \

        #58 60 (check) (check all those involving #60)
        '[OH1](C=O)' : [431.6, 1.3498], \

        #60 61 (not needed, same as 51-61)

        #60 65
        '[C](-[#1])([S])' : [395.5, 1.085], \

        #60 68
        '[C]([S])([CH3])' : [323.0, 1.5247], \

        #66 67
        '[S](-[#1])([C])' : [315.4, 1.3320], \

        #68 69
        '[CH3](-[#1])([CH2]([S]))' : [341.0, 1.112], \

        #71 72 (check)
        '[S]~[O;D1]' : [570.0, 1.4780], \

        #73 74
        '[C]-[C](#N)' : [420.0, 1.4065], \

        #74 75
        'C(#N)(C)' : [1110.0, 1.153], \

        #77 83
        '[#1](cnccccc)' : [370.5, 1.1010], \
        '[#1](ccncccc)' : [370.5, 1.1010], \
        '[#1](cccnccc)' : [370.5, 1.1010], \
        '[#1](ccccncc)' : [370.5, 1.1010], \

        #78 78
        'c(c([OH]))' : [610.9, 1.365], \
        'c(c(c([OH])))' : [610.9, 1.365], \
        'c(c(c(c([OH]))))' : [610.9, 1.365], \

         #78 78
        'c(c([CH3;CH2]))' : [610.9, 1.365], \
        'c(c(c([CH3;CH2])))' : [610.9, 1.365], \
        'c(c(c(c([CH3;CH2]))))' : [610.9, 1.365], \

         #cc benzamidine
        'c(c(~C(~N([#1])([#1]))(~N([#1])([#1]))))' : [472.0, 1.3887], \
        'c(c(c(~C(~N([#1])([#1]))(~N([#1])([#1])))))' : [472.0, 1.3887], \
        'c(c(c(c(~C(~N([#1])([#1]))(~N([#1])([#1]))))))' : [472.0, 1.3887], \

         #78 79
        'c([#1])(c([OH]))' : [409.5, 1.080], \
        'c([#1])(c(c([OH])))' : [409.5, 1.080], \
        'c([#1])(c(c(c([OH]))))' : [409.5, 1.080], \

         #78 79
        'c([#1])(c([CH3;CH2]))' : [409.5, 1.080], \
        'c([#1])(c(c([CH3;CH2])))' : [409.5, 1.080], \
        'c([#1])(c(c(c([CH3;CH2]))))' : [409.5, 1.080], \

        #78 79
#        'c([#1])([cH0])' : [409.5, 1.080], \
#        'c([#1])(c([cH0]))' : [409.5, 1.080], \
#        'c([#1])(c(c([cH0])))' : [409.5, 1.080], \

        #78 88
        'c([C](N)(=N))' : [323.0, 1.525], \

        #80 81 (check) (everything in the 80s should be checked)
        'nc(n)' : [653.9, 1.345], \

        #81 82
        'c([#1])(n)' : [370.5, 1.0810], \

        #83 83
        'cc(ncccc)' : [471.9, 1.3887], \
        'cc(cnccc)' : [471.9, 1.3887], \
        'cc(ccncc)' : [471.9, 1.3887], \

        #83 84
        'c([CH2])(nccccc)' : [345.3, 1.5090], \
        'c([CH2])(cncccc)' : [345.3, 1.5090], \
        'c([CH2])(ccnccc)' : [345.3, 1.5090], \
        'c([CH2])(cccncc)' : [345.3, 1.5090], \

        #84 84
        '[CH3]([CH2])(nccccc)' : [323.0, 1.5247], \
        '[CH3]([CH2])(cncccc)' : [323.0, 1.5247], \
        '[CH3]([CH2])(ccnccc)' : [323.0, 1.5247], \
        '[CH3]([CH2])(cccncc)' : [323.0, 1.5247], \

        #86 87
        'N(-[#1])(~C(~N)(~c))' : [487.0, 1.028], \

        #86 88
        'N(~C(~N)(~c))' : [491.4, 1.3250], \

        #89 90 (not needed, same as 43-80)
        #'n([#1])' : [467.6, 1.030], \
        })

        bondvals1 = dict({ \
        '[#1]~[#6;D3]' : [410], \
        '[#6;D4]~[#6]' : [385], \
        '[#6]~[#6;D4]' : [385], \
        '[#6;D4]~[#7]' : [400], \
        '[#6]~[#8;D1]' : [680], \
        '[#6]~[#8;D2]' : [465], \
        '[#6;D3]~[#6;D3]' : [680], \
        '[#6;D3]~[#7;D2]' : [435], \
        '[#6;D3]~[#7;D3]' : [250], \
        '[#7;D1]~[#7]' : [1613], \
        '[#7;D2]~[#7;D2]' : [950], \
        '[#7]~[#8;D1]' : [900], \
        '[#8;D2]~[#15]' : [450], \
        '[#8;D1]~[#15]' : [775] \
        })

        bondvals2 = dict({ \
        '[#1]~[#6]' : [400], \
        '[#1]~[#7]' : [520], \
        '[#1]~[#8]' : [560], \
        '[#1]~[#9]' : [500], \
        '[#1]~[#14]' : [200], \
        '[#1]~[#15]' : [230], \
        '[#1]~[#16]' : [260], \
        '[#6]~[#6]' : [350], \
        '[#6]~[#7]' : [450], \
        '[#6]~[#8]' : [465], \
        '[#6]~[#9]' : [350], \
        '[#6]~[#14]' : [350], \
        '[#6]~[#15]' : [350], \
        '[#6]~[#16]' : [216], \
        '[#6]~[#17]' : [350], \
        '[#7]~[#7]' : [850], \
        '[#7]~[#8]' : [750], \
        '[#7]~[#14]' : [450], \
        '[#7]~[#15]' : [500], \
        '[#7]~[#16]' : [550], \
        '[#8]~[#8]' : [750], \
        '[#8]~[#14]' : [500], \
        '[#8]~[#15]' : [450], \
        '[#8]~[#16]' : [606], \
        '[#8]~[#17]' : [500], \
        '[#14]~[#14]' : [400], \
        '[#14]~[#15]' : [450], \
        '[#14]~[#16]' : [500], \
        '[#14]~[#17]' : [650], \
        '[#16]~[#16]' : [188] \
        })

        bondvals3 = dict({ \
        '[#1]~[*]' : [300], \
        '[#6]~[*]' : [450], \
        '[#7]~[*]' : [600], \
        '[#8]~[*]' : [600], \
        '[#14]~[*]' : [450], \
        '[#16]~[*]' : [250], \
        '[#17]~[*]' : [300] \
        })

        bondvals4 = dict({ \
        '[*]~[*]' : [defaultBConstVal], \
        })

        vals.append(bondvals4)
        vals.append(bondvals3)
        vals.append(bondvals2)
        vals.append(bondvals1)
        vals.append(bondparamvals3)
        vals.append(bondparamvals2)
        vals.append(bondparamvals1)
        d = dict()
        for v in vals:
            for skey in iter(v):
                openbabel.OBSmartsPattern.Init(self.sp,skey)
                self.sp.Match(mol)
                for ia in self.sp.GetMapList():
                    sortedlist = [self.idxtoclass[ia[0] - 1], self.idxtoclass[ia[1] - 1]]
                    sortedlist.sort()
                    key1 = sortedlist
                    key1string = '%d %d ' % (key1[0], key1[1])
                    blen = mol.GetBond(ia[0],ia[1]).GetLength()
                    key2 = 'bond%9d%6d%11.4f%10.4f' % (key1[0], key1[1], v[skey][0], blen)
                    d.update({key1string : key2})
        x = []
        for v in dict.values(d):
            x.append(v)
        return x

    def angguess(self, mol):
        found = []
        vals = []

        angparamvals3 = dict({ \
        #38 37 38 (check) (not sure if this is too vague)
        '[#1][C][#1]' : [40.57, 107.6, 107.8, 109.47], \
        })

        angparamvals2 = dict({ \
        #24 24 25
        '[CH3][CH3][#1]' : [42.44, 109.80, 109.310, 110.70], \

        #25 24 25
        '[#1][CH3][#1]' : [39.57, 107.60, 107.8, 109.47], \

        #25 24 26
        '[#1][CH3][CH2]' : [42.44, 109.80, 109.310, 110.70], \

        #25 24 28
        '[#1][CH3][CH1]' : [42.0, 110.70], \

        #24 26 26
        '[CH3][CH2][CH2]' : [48.2, 109.5, 110.2, 111.0], \

        #24 26 27
        '[CH3][CH2][#1]' : [42.44, 109.8, 109.31, 110.7], \

        #26 26 27
        '[CH2][CH2][#1]' : [42.44, 109.8, 109.31, 110.7], \

        #27 26 27
        '[#1][CH2][#1]' : [39.57, 107.6, 107.8, 109.47], \

        #24 28 24
        '[CH3][CH1][CH3]' : [48.2, 109.5, 110.2, 111.0], \

        #24 28 29
        '[CH3][CH1][#1]' : [42.0, 112.8], \
        #37 37 37
        '[C][CH2][C]' : [48.2, 109.5, 110.2, 111.0], \

        #37 37 38
        '[C][C][#1]' : [45.44, 109.8, 109.310, 110.7], \

        #37 37 39 (not needed, same as 37 37 38)
        #'[C][CH3][#1]'

        #37 37 47 (check) (should be moved, less specific than 37 37 50)
        '[C][CH2]([#1])([N,c])' : [42.44, 109.8, 109.31, 110.7], \

        #34 37 37
        '[#1][CH2]([C])([OH1])' : [45.44, 109.8, 109.31, 110.7], \

        #38 37 78 (check)
        '[#1][C][c]' : [39.57, 109.5], \

        #37 48 37
        '[C][N][C]' : [51.8, 107.2, 108.2], \

        #76 76 76
        'ccc' : [63.31, 120], \

        #37 81 80
        '[C]cn' : [35.97, 122.0], \
        })

        angparamvals1 = dict({ \
        #18 17 18
        '[#9][#5][#9]' : [65.0, 109.47], \

        #20 19 20 (needs_work) (possible mistake in forcefield)
        '[#9][#15][#9]' : [40.0, 180], \

        #23 22 23
        '[#1][CH4][#1]' : [29.57, 109.470], \

        #32 31 32
        '[#1][O][#1]' : [34.05, 108.5], \

        #34 33 34
        '[#1][CH3]([#1])([OH1])' : [45.57, 107.6, 107.8, 109.47], \

        #34 33 35
        '[#1][CH3][OH1]' : [60.99, 110.0, 108.9, 108.7], \

        #33 35 36 (check) (might not be needed, same as 36-35-37)
        '[CH3][O][#1]' : [64.96, 106.8], \

        #36 35 37
        '[#1][O][C]' : [64.96, 106.8], \

        #36 35 40 (check) (make more general?)
        '[#1][O][CH1]([CH3])([CH3])' : [53.96, 106.8], \

        #36 35 78
        '[#1][O][c]' : [25.9, 109.0], \

        #37 35 37
        '[C][O][C]' : [88.5, 106.0], \

        #34 37 34 (check)
        '[#1][C]([#1])([OH1])' : [40.57, 107.6, 107.8, 109.47], \
        #'[#1][C][#1]' : [40.57, 107.6, 107.8, 109.47], \

        #34 37 35
        '[#1][C][O]' : [60.99, 110.0, 108.9, 108.7], \

        #35 37 37
        '[O][CH2][C]' : [65.71, 107.5, 107.0, 107.9], \

        #35 37 41
        '[O]([C])([#1])([CH2,CH3,c])' : [70.0, 110.0, 108.9, 108.7], \

        #37 37 48 (check) (should be moved, less specific than 37 37 54)
        '[C][CH2][N]' : [56.11, 109.47, 108.0, 111.0], \

        #37 37 50 (check)
        '[CH2]([CH2]([#1]))([N])' : [42.44, 109.8, 109.31, 110.7], \
        '[CH2][CH2]([#1])([N])' : [42.44, 109.8, 109.31, 110.7], \

        #37 37 54
        '[C][CH2][N](C=O)' : [53.96, 109.48, 111.3, 111.8], \

        #37 37 57 (not needed, same as 37 37 50)
        #'[C][CH2]([#1])([N](C=O))' : [42.44, 109.8, 109.31, 110.7], \

        #37 37 70
        '[C][CH2]([#1])(S(=O)(=O)([O-]))' : [42.44, 109.8, 109.30, 110.7], \

        #37 37 71
        '[C][CH2][S](=O)(=O)([O-])' : [53.0, 108.0], \

        #37 37 78
        '[C][CH2][c]' : [38.85, 110.6], \

        #37 37 81
        '[C][CH2][c](n)' : [38.85, 112.7], \

        #38 37 40
        '[#1][C][CH1]([OH1])' : [42.44, 109.8, 109.31, 110.7], \

        #38 37 81 (not needed, same as 38 37 78)
        #'[#1][C][c](n)' : [39.57, 109.5], \

        #39 37 39 (check)
        '[#1][CH2]([#1])([CH3])' : [45.57, 107.6, 107.8, 109.47], \
        '[#1][CH3]([#1])([N])' : [45.57, 107.6, 107.8, 109.47], \

        #39 37 48
        '[#1][CH3][N]' : [58.99, 109.3], \

        #41 37 41
        '[#1][CH3]([#1])([O]([CH2,CH3,c]))' : [43.57, 107.6, 107.8, 109.47], \

        #47 37 47
        '[#1][CH3,CH2]([#1])([N,c])' : [40.57, 107.6, 107.8, 109.47], \

        #47 37 48
        '[#1][CH3,CH2][N]' : [70.99, 109.3], \

        #47 37 78 (check) (don't understand, how is this different from 38 37 78)
        '[#1][CH3,CH2][c]' : [39.57, 109.5, 109.31, 110.4], \

        #48 37 50 (check) (should it solely be for pyrrolidine?)
        '[N]([CH2]([#1])([CH2]))([CH2])' : [58.99, 109.3], \

        #50 37 50 (check)
        '[#1][CH2]([#1])([N])' : [39.57, 107.6, 107.8, 109.47], \
        '[#1][CH2]([#1])([CH2]([N]))' : [39.57, 107.6, 107.8, 109.47], \

        #51 37 56 (check) (did I make it too specific?)
        '[C]([CH3]([#1]))(=O)([N])' : [38.85, 109.49], \

        #54 37 57
        '[N]([C]([#1]))(C=O)' : [54.67, 111.0], \

        #56 37 56 (may not be necessary)
        '[#1][CH3]([#1])(C(N)(=O))' : [39.57, 107.6, 107.8, 109.47], \

        #57 37 57 (may not be necessary)
        '[#1][CH3]([#1])(N(C=O))' : [39.57, 107.6, 107.8, 109.47], \

        #60 37 62
        '[C]([C]([#1]))(=O)' : [38.85, 109.49], \

        #62 37 62
        '[#1][C]([#1])(C=O)' : [39.57, 107.6, 107.8, 109.47], \

        #70 37 70
        '[#1][C]([#1])(S(=O)(=O)([O-]))' : [39.0, 110.75], \

        #34 40 35 (check) (should this be less specific, like the first string)
        #'[#1][C][O]'
        '[#1][CH1]([OH1])([CH3])([CH3])' : [58.99, 110.0, 108.9, 108.7], \

        #34 40 37
        '[#1][CH1]([CH3,CH2])([OH1])' : [42.44, 109.8, 109.31, 110.7], \

        #35 40 37
        '[OH1][CH1][C]' : [59.71, 107.5, 107.0, 107.9], \

        #37 40 37
        '[C][CH1]([C])([OH1])' : [48.2, 109.5, 110.2, 111.0], \

        #43 42 43
        '[#1][NH3][#1]' : [43.52, 106.4, 107.1], \

        #43 42 44 (needs_work)

        #46 45 46
        '[#1][N;D4;H4;+][#1]' : [43.52, 109.47], \

        #37 48 49
        '[C][N][#1]' : [43.16, 108.1, 110.9], \

        #49 48 49
        '[#1][N]([#1])(C([#1]))' : [34.5, 106.4, 107.1], \

        #37 51 53 (check)
        '[C][C](=O)([N,c])' : [80.0, 122.4], \

        #37 51 54
        '[C][C]([N])(=O)' : [70.0, 113.4], \

        #52 51 53
        '[#1][C](=O)(N)' : [68.34, 119.2], \

        #52 51 54
        '[#1][C]([N])(=O)' : [31.65, 109.3], \

        #53 51 54
        '[O]=[C][N]' : [76.98, 124.2], \

        #61 51 83
        '[#1][C](c)(=O)' : [33.38, 116.1, 117.3], \

        #61 51 85
        '[#1][C](=O)(c)' : [61.15, 119.2, 119.2], \

        #83 51 85
        '[c][C](=O)([#1])' : [61.15, 123.5, 123.5], \

        #37 54 37
        '[C][N]([C])(C=O)' : [54.67, 122.5], \

        #37 54 51
        '[C][N][C](=O)' : [50.0, 122.0], \

        #37 54 55
        '[C][N]([#1])(C=O)' : [32.01, 117.0], \

        #51 54 55
        '[C]([N]([#1]))(=O)' : [50.0, 121.0], \

        #55 54 55
        '[#1][N]([#1])(C=O)' : [22.3, 122.0], \

        #59 58 60
        '[#1][OH1][C](=O)' : [49.64, 108.7], \

        #37 60 53 (check) (should the last part be removed?)
        '[C][C](=O)([OH1])' : [61.15, 123.5, 123.5], \

        #37 60 58 (check) (should the last part be removed?)
        '[C][C]([OH1])(=O)' : [111.51, 110.3], \

        #37 60 61
        '[C][C]([#1])(=O)' : [33.38, 116.1, 117.3], \

        #53 60 58
        '[O]=[C][OH1]' : [122.3, 121.5, 122.5], \

        #53 60 61
        '[O]=[C][#1]' : [61.15, 119.2, 119.2], \

        #58 60 61
        '[OH1][C]([#1])(=O)' : [39.57, 107.0], \

        #61 60 61
        '[#1][C]([#1])(=O)' : [46.76, 115.5], \

        #65 60 65 (check)
        '[#1][C]([#1])(S)' : [39.57, 107.6, 107.8, 109.47], \

        #65 60 66
        '[#1][C][S]' : [60.24, 110.8, 110.8, 108.0], \

        #65 60 68 (check) (should it be '[#1][CH2]([CH3])([S])'?)
        '[#1][C]([C])([S])' : [42.44, 109.8, 109.31, 110.7], \

        #66 60 68
        '[S][C][C]' : [53.24, 108.0, 109.5, 110.1], \

        #64 63 64
        '[#1][S][#1]' : [52.52, 92.9], \

        #60 66 60
        '[C][S][C]' : [60.43, 95.9], \

        #60 66 67
        '[C][S][#1]' : [46.76, 96.0], \

        #60 68 69
        '[C]([C]([#1]))(S)' : [42.44, 109.8, 109.31, 110.7], \

        #69 68 69
        '[#1][C]([#1])(CS)' : [39.57, 107.6, 107.8, 109.47], \

        #37 71 72
        '[C][S]([O-])(=O)(=O)' : [60.0, 104.6], \

        #72 71 72 (check)
        '[O;D1]~[S]~[O;D1]' : [70.0, 113.5], \

        #74 73 74
        '[C]([C](C#N))(#N)' : [65.0, 120.0], \

        #73 74 75
        '[C][C]#[N]' : [42.0, 180.0], \

        #76 76 77
        'cc[#1]' : [35.25, 120.0, 120.5], \

        #76 76 89 (check, should I make it n+) (probably not since there is only one ccn)
        'ccn' : [69.78, 121.0], \

        #77 76 89 (check, should I make it n+) (probably not since there is only one [#1]cn)
        '[#1]cn' : [38.13, 119.0], \

        #35 78 78
        '[O]cc' : [43.16, 120.0], \

        #37 78 78
        '[C]cc' : [33.81, 122.3], \

        #78 78 78
        'c[cH0]c' : [64.67, 121.7], \
        'cc[cH0]' : [64.67, 121.7], \
        'ccc([cH0])' : [64.67, 121.7], \
        'ccc(c([cH0]))' : [64.67, 121.7], \

        #78 78 79
        'c([cH0])([#1])' : [35.25, 120.0, 120.5], \
        'c(c([#1]))([cH0])' : [35.25, 120.0, 120.5], \
        'c(c([#1])([cH0]))' : [35.25, 120.0, 120.5], \
        'c(c([#1]))(c([cH0]))' : [35.25, 120.0, 120.5], \
        'c(c([#1])(c([cH0])))' : [35.25, 120.0, 120.5], \

        #78 78 88
        'cc[C](N)(=N)' : [54.67, 121.7], \

        #43 80 81
        '[#1]nc' : [35.25, 125.5], \

        #43 80 83 (not needed, same as 43 80 81)

        #81 80 81
        'cnc' : [86.33, 105.1, 107.1], \

        #83 80 83
        'cnccccc' : [86.33, 109.0], \

        #37 81 81 (check)
        '[C]c(cn)(n)' : [35.97, 131.0], \

        #80 81 80
        'ncn' : [28.78, 112.1], \

        #80 81 81
        'nccn' : [47.48, 107.0], \

        #80 81 82
        'nc[#1]' : [38.13, 122.5], \

        #81 81 82
        'c(c([#1])(n))(n)' : [35.25, 128.0], \

        #51 83 83
        'C(ccncccc)(=O)' : [54.67, 121.7], \
        'C(cccnccc)(=O)' : [54.67, 121.7], \
        'C(ccccncc)(=O)' : [54.67, 121.7], \

        #77 83 80
        '[#1]cn' : [38.13, 122.5], \

        #77 83 83
        '[#1](ccncccc)' : [35.25, 128.0], \
        '[#1](cccnccc)' : [35.25, 128.0], \
        '[#1](ccccncc)' : [35.25, 128.0], \

        #80 83 83
        'ncc' : [47.48, 109.0], \

        #83 83 83
        'cccnccc' : [63.31, 120.0], \
        'ccccncc' : [63.31, 120.0], \

        #83 83 84 (check)
        'cc([CH2])(ncccc)' : [61.87, 127.0], \
        'c(c([CH2]))(ncccc)' : [61.87, 127.0], \
        'cc([CH2])(cnccc)' : [61.87, 127.0], \
        'c(c([CH2]))(ccncc)' : [61.87, 127.0], \
        'cc([CH2])(cccnc)' : [61.87, 127.0], \

        #38 84 38
        '[#1][CH2]([#1])(cnccccc)' : [39.57, 107.6, 107.8, 109.47], \
        '[#1][CH2]([#1])(ccncccc)' : [39.57, 107.6, 107.8, 109.47], \
        '[#1][CH2]([#1])(cccnccc)' : [39.57, 107.6, 107.8, 109.47], \
        '[#1][CH2]([#1])(ccccncc)' : [39.57, 107.6, 107.8, 109.47], \
        '[#1][CH3]([#1])([CH2](cnccccc))' : [39.57, 107.6, 107.8, 109.47], \
        '[#1][CH3]([#1])([CH2](ccncccc))' : [39.57, 107.6, 107.8, 109.47], \
        '[#1][CH3]([#1])([CH2](cccnccc))' : [39.57, 107.6, 107.8, 109.47], \
        '[#1][CH3]([#1])([CH2](ccccncc))' : [39.57, 107.6, 107.8, 109.47], \

        #38 84 83
        '[#1][CH2](cnccccc)' : [61.15, 109.8, 109.31, 110.7], \
        '[#1][CH2](ccncccc)' : [61.15, 109.8, 109.31, 110.7], \
        '[#1][CH2](cccnccc)' : [61.15, 109.8, 109.31, 110.7], \
        '[#1][CH2](ccccncc)' : [61.15, 109.8, 109.31, 110.7], \

        #38 84 84
        '[#1][CH3][CH2](cnccccc)' : [42.44, 109.8, 109.31, 110.7], \
        '[#1][CH3][CH2](ccncccc)' : [42.44, 109.8, 109.31, 110.7], \
        '[#1][CH3][CH2](cccnccc)' : [42.44, 109.8, 109.31, 110.7], \
        '[#1][CH3][CH2](ccccncc)' : [42.44, 109.8, 109.31, 110.7], \

        #83 84 84 (check)
        'c([CH2][CH3])(nccccc)' : [48.2, 109.5, 110.2, 111.0], \
        'c([CH2][CH3])(cncccc)' : [48.2, 109.5, 110.2, 111.0], \
        'c([CH2][CH3])(ccnccc)' : [48.2, 109.5, 110.2, 111.0], \
        'c([CH2][CH3])(cccncc)' : [48.2, 109.5, 110.2, 111.0], \

        #87 86 87
        '[#1][N]([#1])(~C(c))' : [29.5, 123.0], \

        #87 86 88
        '[#1][N]~[C](c)' : [41.7, 120.5], \

        #78 88 86
        '[c][C]~[N]' : [28.8, 120.0], \

        #86 88 86
        'NC(=N)(c)' : [28.8, 120.0], \

        #76 89 76 (check)
        'c[n;+]c' : [86.33, 112.6], \

        #76 89 90 (check)
        'c[n;+][#1]' : [35.25, 123.7], \

        #76 89 90 (check)
        '[OD1]~[C]~[OD1]' : [57.60, 123.7], \

        })

        angvals1 = dict({ \
        '[#8;D1]~[#15]~[#8;D1]' : [89.88], \
        '[#8;D1]~[#16]~[#8;D1]' : [168.00] \
        })

        angvals2 = dict({ \
        '[#1]~[#6;D4]~[#1]' : [34.5], \
        '[#1]~[#6;D4]~[#6]' : [38.0], \
        '[#1]~[#6;D4]~[#7]' : [50.6], \
        '[#1]~[#6;D4]~[#8]' : [51.5], \
        '[#1]~[#6;D4]~[#9]' : [50.0], \
        '[#6]~[#6;D4]~[#6]' : [60.0], \
        '[#6]~[#6;D4]~[#7]' : [80.0], \
        '[#6]~[#6;D4]~[#8]' : [88.0], \
        '[#6]~[#6;D4]~[#9]' : [89.0], \
        '[#6]~[#6;D4]~[#14]' : [65.0], \
        '[#6]~[#6;D4]~[#15]' : [60.0], \
        '[#6]~[#6;D4]~[#16]' : [53.2], \
        '[#6]~[#6;D4]~[#17]' : [55.0], \
        '[#8]~[#6;D4]~[#15]' : [60.0], \
        '[#1]~[#8]~[#1]' : [34.05], \
        '[#1]~[#8]~[#6]' : [65.0], \
        '[#6]~[#8]~[#6]' : [88.5], \
        '[#6;D1]~[#8]~[#8]' : [122.3], \
        '[#6]~[#8]~[#8;D1]' : [122.3], \
        '[#8;D1]~[#15]~[#8]' : [75.86], \
        '[#8]~[#15]~[#8;D1]' : [75.86], \
        '[#8;D1]~[#16]~[#8]' : [85.0], \
        '[#8]~[#16]~[#8;D1]' : [85.0] \
        })

        angvals3 = dict({ \
        '[#1]~[#6;D4]~[*]' : [35.0], \
        '[#6]~[#6;D4]~[*]' : [50], \
        '[#8]~[#6;D4]~[*]' : [65], \
        '[#8]~[#6;D3]~[*]' : [50], \
        '[#6]~[#8]~[#8]' : [85], \
        '[#6]~[#8]~[#15]' : [80.3], \
        '[#6]~[#15]~[#6]' : [75.0], \
        '[#6]~[#15]~[#8]' : [80.0], \
        '[#8]~[#15]~[#8]' : [65.58], \
        '[#6]~[#16]~[#16]' : [72.0], \
        '[#8]~[#16]~[#8]' : [80.0], \
        '[#8]~[#16]~[#16]' : [75.0] \
        })

        angvals4 = dict({ \
        '[#1]~[#6]~[*]' : [32.0], \
        '[#6]~[#6]~[*]' : [60], \
        '[#8]~[#6]~[*]' : [60], \
        '[#1]~[#8]~[*]' : [60.0], \
        '[#6]~[#8]~[*]' : [80.0], \
        '[#1]~[#15]~[*]' : [30.0], \
        '[#6]~[#15]~[*]' : [75], \
        '[#8]~[#15]~[*]' : [70.0], \
        '[#1]~[#16]~[*]' : [30.00], \
        '[#6]~[#16]~[*]' : [80.0], \
        '[#8]~[#16]~[*]' : [75.0] \
        })

        angvals5 = dict({ \
        '[*]~[#6]~[*]' : [60], \
        '[*]~[#8]~[*]' : [80.0], \
        '[*]~[#16]~[*]' : [75.0], \
        '[*]~[#15]~[*]' : [75.0] \
        })

        angvals6 = dict({ \
        '[#1]~[*]~[*]' : [35.0] \
        })

        angvals7 = dict({ \
        '[*]~[*]~[*]' : [65.0] \
        })

        vals.append(angvals7)
        vals.append(angvals6)
        vals.append(angvals5)
        vals.append(angvals4)
        vals.append(angvals3)
        vals.append(angvals2)
        vals.append(angvals1)
        vals.append(angparamvals3)
        vals.append(angparamvals2)
        vals.append(angparamvals1)
        shoulduseanglep = False
        if self.versionnum>=8.7:
            shoulduseanglep = True



        d = dict()
        for v in vals:
            for skey in iter(v):
                openbabel.OBSmartsPattern.Init(self.sp,skey)
                match=self.sp.Match(mol)
                for ia in self.sp.GetMapList():
                    sortedlist = [self.idxtoclass[ia[0] - 1], self.idxtoclass[ia[1] - 1], self.idxtoclass[ia[2] - 1]]
                    if(mol.GetAtom(ia[0]).GetAtomicNum() > mol.GetAtom(ia[2]).GetAtomicNum()):
                        continue
                    key1 = self.sortfirstlast(sortedlist)
                    a = mol.GetAtom(ia[0])
                    b = mol.GetAtom(ia[1])
                    c = mol.GetAtom(ia[2])
                    angle = mol.GetAngle(a,b,c)
                    if b.GetHyb()==2 and shoulduseanglep==True: # only for SP2 hyb middle atoms use angp
                        if b.IsInRing() and b.IsAromatic() and b.GetValence()==3:
                            key2 = 'anglep%8d%6d%6d%11.4f%10.4f' % (key1[0], key1[1], key1[2], v[skey][0], angle)
                        else:
                            key2 = 'angle%8d%6d%6d%11.4f%10.4f' % (key1[0], key1[1], key1[2], v[skey][0], angle)
              
                    else:
                        key2 = 'angle%8d%6d%6d%11.4f%10.4f' % (key1[0], key1[1], key1[2], v[skey][0], angle)
              
                                    
                    key1string = '%d %d %d' % (key1[0], key1[1], key1[2])
                    d.update({key1string : key2})

        

        return list(d.values())

    def sbguess(self, mol):
        found = []
        vals = []
        sbparamvals4 = dict({ \
        #37 37 38
        '[C][C][#1]' : [38.00, -4.50], \
        })

        sbparamvals3 = dict({ \
        #37 37 37
        '[C][CH2][C]' : [18.70, 18.70], \

        #26 26 27
        '[CH2][CH2][#1]' : [11.50, 11.50], \

        #24 26 27
        '[CH3][CH2][#1]' : [11.50, 11.50], \

        #24 24 25
        '[CH3][CH3][#1]' : [11.50, 11.50], \

        #25 24 26
        '[#1][CH3][CH2]' : [11.50, 11.50], \
        })

        sbparamvals2 = dict({ \
        #37 81 80
        '[C]cn' : [18.70, 18.70], \

        #25 24 28
        '[#1][CH3][CH1]' : [11.50, 11.50], \

        #24 26 26
        '[CH3][CH2][CH2]' : [18.70, 18.70], \

        #37 37 39
        #'[C][CH3][#1]' : [38.00, .50], \

        #37 37 47
        '[C][CH2]([#1])([N,c])' : [11.50, 11.50], \

        #37 37 48
        '[C][CH2][N]' : [18.70, 18.70], \

        #34 37 37
        '[#1][CH2]([C])([OH1])' : [-4.50, 38.00], \

        #76 76 76
        'ccc' : [18.70, 18.70], \

        #37 81 81
        '[C]c(cn)(n)' : [18.70, 18.70], \

        #47 37 48
        '[#1][CH3,CH2][N]' : [11.50, 11.50], \

        #48 37 50
        '[N][CH2][#1]' : [11.50, 11.50], \

        #37 37 78
        '[C][CH2][c]' : [18.70, 18.70], \

        #37 48 37
        '[C][N][C]' : [7.20, 7.20], \

        #37 35 37
        '[C][O][C]' : [38.00, 38.00], \

        #34 37 35
        '[#1][C][O]' : [-4.50, 38.00], \

        #35 37 37
        '[O][CH2][C]' : [38.00, 38.00], \
        })

        sbparamvals1 = dict({ \
        #34 33 35
        '[#1][CH3][OH1]' : [-4.50, 38.00], \

        #33 35 36
        '[CH3][O][#1]' : [38.00, -4.50], \

        #36 35 37
        '[#1][O][C]' : [-4.50, 38.00], \

        #36 35 78
        '[#1][O][c]' : [12.95, 12.95], \

        #35 37 41
        '[O]([C])([#1])([CH2,CH3,c])' : [38.00, -4.50], \

        #37 37 50
        #'[CH2]([C]([#1]))([N])' : [11.50, 11.50], \
        '[CH2]([CH2]([#1]))([N])' : [11.50, 11.50], \
        '[CH2][CH2]([#1])([N])' : [11.50, 11.50], \

        #37 37 54
        '[C][CH2][N](C=O)' : [18.70, 18.70], \

        #37 37 57
        '[C][CH2]([#1])([N](C=O))' : [11.50, 11.50], \

        #37 37 70
        '[C][CH2]([#1])(S(=O)(=O)([O-]))' : [11.50, 11.50], \

        #37 37 71
        '[C][CH2][S](=O)(=O)([O-])' : [18.70, 18.70], \

        #37 37 81
        '[C][CH2][c](n)' : [18.70, 18.70], \

        #38 37 40
        '[#1][C][CH1]([OH1])' : [11.50, 11.50], \

        #38 37 78
        '[#1][C][c]' : [11.50, 11.50], \

        #38 37 81
        #'[#1][C][c](n)' : [11.50, 11.50], \

        #39 37 48 (not needed) (same as 47 37 48)
        #'[#1][CH3][N]' : [11.50, 11.50], \

        #47 37 78 (not needed) (same as 38 37 78)
        #'[#1][CH3,CH2][c]' : [11.50, 11.50], \

        #51 37 56
        '[C]([CH3]([#1]))(=O)([N])' : [11.50, 11.50], \

        #54 37 57
        '[N]([C]([#1]))(C=O)' : [11.50, 11.50], \

        #60 37 62
        '[C]([C]([#1]))(=O)' : [11.50, 11.50], \

        #34 40 35
        #'[#1][C][O]' : [-4.50, 38.00], \
        '[#1][CH1]([OH1])([CH3])([CH3])' : [-4.50, 38.00], \

        #34 40 37
        '[#1][CH1]([CH3,CH2])([OH1])' : [-4.50, 38.00], \

        #35 40 37
        '[OH1][CH1][C]' : [38.00, 38.00], \

        #37 40 37
        '[C][CH1]([C])([OH1])' : [38.00, 38.00], \

        #37 48 49
        '[C][N][#1]' : [4.30, 4.30], \

        #37 51 53
        '[C][C](=O)([N,c])' : [18.70, 18.70], \

        #37 51 54
        '[C][C]([N])(=O)' : [18.70, 18.70], \

        #52 51 53
        '[#1][C](=O)(N)' : [11.50, 11.50], \

        #52 51 54
        '[#1][C]([N])(=O)' : [11.50, 11.50], \

        #53 51 54
        '[O]=[C][N]' : [18.70, 18.70], \

        #61 51 83
        '[#1][C](c)(=O)' : [11.50, 11.50], \

        #61 51 85
        '[#1][C](=O)(c)' : [11.50, 11.50], \

        #83 51 85
        '[c][C](=O)([#1])' : [18.70, 18.70], \

        #37 54 37
        '[C][N]([C])(C=O)' : [7.20, 7.20], \

        #37 54 51
        '[C][N][C](=O)' : [7.20, 7.20], \

        #37 54 55
        '[C][N]([#1])(C=O)' : [4.30, 4.30], \

        #51 54 55
        '[C]([N]([#1]))(=O)' : [4.30, 4.30], \

        #59 58 60
        '[#1][OH1][C](=O)' : [12.95, 12.95], \

        #37 60 53
        '[C][C](=O)([OH1])' : [18.70, 18.70], \

        #37 60 58
        '[C][C]([OH1])(=O)' : [18.70, 18.70], \

        #37 60 61
        '[C][C]([#1])(=O)' : [11.50, 11.50], \

        #53 60 58
        '[O]=[C][OH1]' : [18.70, 18.70], \

        #53 60 61
        '[O]=[C][#1]' : [11.50, 11.50], \

        #58 60 61
        '[OH1][C]([#1])(=O)' : [11.50, 11.50], \

        #65 60 66
        '[#1][C][S]' : [11.50, 11.50], \

        #65 60 68
        '[#1][C]([C])([S])' : [11.50, 11.50], \

        #66 60 68
        '[S][C][C]' : [18.70, 18.70], \

        #60 66 60
        '[C][S][C]' : [-5.75, -5.75], \

        #60 66 67
        '[C][S][#1]' : [1.45, 1.45], \

        #60 68 69
        '[C]([C]([#1]))(S)' : [11.50, 11.50], \

        #74 73 74
        '[C]([C](C#N))(#N)' : [18.70, 18.70], \

        #73 74 75
        '[C][C]#[N]' : [18.70, 18.70], \

        #76 76 77
        'cc[#1]' : [11.50, 11.50], \

        #76 76 89
        'ccn' : [18.70, 18.70], \

        #77 76 89
        '[#1]cn' : [11.50, 11.50], \

        #35 78 78
        '[O]cc' : [18.70, 18.70], \

        #37 78 78
        '[C]cc' : [18.70, 18.70], \

        #78 78 78
        'c[cH0]c' : [18.70, 18.70], \
        'cc[cH0]' : [18.70, 18.70], \
        'ccc([cH0])' : [18.70, 18.70], \
        'ccc(c([cH0]))' : [18.70, 18.70], \

        #78 78 79
        'c([cH0])([#1])' : [38.00, 11.60], \
        'c(c([#1]))([cH0])' : [38.00, 11.60], \
        'c(c([#1])([cH0]))' : [38.00, 11.60], \
        'c(c([#1]))(c([cH0]))' : [38.00, 11.60], \
        'c(c([#1])(c([cH0])))' : [38.00, 11.60], \

        #78 78 88
        'cc[C](N)(=N)' : [18.70, 18.70], \

        #43 80 81
        '[#1]nc' : [4.30, 4.30], \

        #81 80 81
        'cnc' : [14.40, 14.40], \

        #83 80 83 (not needed) (same as 81 80 81)
        #'cnccccc' : [14.40, 14.40], \

        #80 81 80
        'ncn' : [18.70, 18.70], \

        #80 81 81
        'nccn' : [18.70, 18.70], \

        #80 81 82
        'nc[#1]' : [11.50, 11.50], \

        #81 81 82
        'c(c([#1])(n))(n)' : [11.50, 11.50], \

        #51 83 83
        'C(ccncccc)(=O)' : [18.70, 18.70], \
        'C(cccnccc)(=O)' : [18.70, 18.70], \
        'C(ccccncc)(=O)' : [18.70, 18.70], \

        #77 83 80 (not needed) (same as 77 76 89)
        #'[#1]cn' : [11.50, 11.50], \

        #77 83 83
        '[#1](ccncccc)' : [11.50, 11.50], \
        '[#1](cccnccc)' : [11.50, 11.50], \
        '[#1](ccccncc)' : [11.50, 11.50], \

        #80 83 83
        'ncc' : [18.70, 18.70], \

        #83 83 83
        'cccnccc' : [18.70, 18.70], \
        'ccccncc' : [18.70, 18.70], \

        #83 83 84
        'cc([CH2])(ncccc)' : [18.70, 18.70], \
        'c(c([CH2]))(ncccc)' : [18.70, 18.70], \
        'cc([CH2])(cnccc)' : [18.70, 18.70], \
        'c(c([CH2]))(ccncc)' : [18.70, 18.70], \
        'cc([CH2])(cccnc)' : [18.70, 18.70], \

        #35 37 38
        '[O][C][#1]' : [11.50, 11.50], \

        #37 37 51 (check)
        '[C][C][C](=O)([N,c])' : [18.70, 18.70],  \

        #37 37 56 (check)
        '[CH3,CH2][CH2]([#1])(C(=O)(N))' : [11.50, 11.50], \

        #38 37 48
        '[#1][C][N]' : [11.50, 11.50], \

        #39 37 51 (check)
        '[#1][CH2](C(=O)(N))([CH3])' : [11.50, 11.50], \

        #70 37 71
        '[#1][C]S(=O)(=O)([O-])' : [11.50, 11.50], \

        #37 48 44 (needs_work) (contains amine lone pair)

        #60 66 66 (check)
        '[C][S][S](C)' : [-5.75, -5.75], \

        #43 80 83 (not needed, same as 43 80 83)
        #'[#1]nc' : [4.30, 4.30], \

        #43 80 84 (check) (not sure)
        '[#1]n[CH2]' : [4.30, 4.30], \

        #44 80 44 (needs_work) (contains amine lone pair)
        })

        sbvals1 = dict({ \
        '[#1][*][#1]' : [0,0], \
        '[#1][#7;D3][*]' : [4.3, 7.2], \
        '[!#1][#7;D3][#1]' : [7.2, 4.3], \
        '[!#1][#7;D4][#1]' : [7.2, 4.3], \
        '[#1][#15;D4][*]' : [14.4, 14.4], \
        '[!#1][#15;D4][#1]' : [14.4, 14.4], \
        })

        sbvals2 = dict({ \
        '[#1][#6][*]' : [11.5, 18.7], \
        '[!#1][#6][#1]' : [18.7, 11.5], \
        '[#1][#7][*]' : [4.3, 14.4], \
        '[!#1][#7][#1]' : [14.4, 4.3], \
        '[#1][#14][*]' : [8.6, 14.4], \
        '[!#1][#14][#1]' : [14.4, 8.6], \
        '[#1][#15][*]' : [8.6, 8.6], \
        '[!#1][#15][#1]' : [8.6, 8.6], \
        '[#1][#16][*]' : [1.45, -5.75], \
        '[!#1][#16][#1]' : [-5.75, 1.45] \
        })

        sbvals3 = dict({ \
        '[*][#7;D3][*]' : [7.2, 7.2], \
        '[*][#15;D4][*]' : [14.4, 14.4] \
        })

        sbvals4 = dict({ \
        '[*][#6][*]' : [18.7, 18.7], \
        '[*][#7][*]' : [14.4, 14.4], \
        '[*][#14][*]' : [14.4, 14.4], \
        '[*][#15][*]' : [8.6, 8.6], \
        '[*][#16][*]' : [-5.75, -5.75] \
        })

        sbvals5 = dict({ \
        '[#1][*][!#1]' : [-4.5, 38.0], \
        '[!#1][*][#1]' : [38.0, -4.5], \
        '[!#1][*][!#1]' : [38.0, 38.0] \
        })

        sbvals6 = dict({ \
        '[*][*][*]' : [38.0, 38.0] \
        })

        vals.append(sbvals6)
        vals.append(sbvals5)
        vals.append(sbvals4)
        vals.append(sbvals3)
        vals.append(sbvals2)
        vals.append(sbvals1)
        vals.append(sbparamvals3)
        vals.append(sbparamvals2)
        vals.append(sbparamvals1)

        d = dict()
        for v in vals:
            for skey in iter(v):
                openbabel.OBSmartsPattern.Init(self.sp,skey)
                self.sp.Match(mol)
                for ia in self.sp.GetMapList():
                    sortedlist = [self.idxtoclass[ia[0] - 1], self.idxtoclass[ia[1] - 1], self.idxtoclass[ia[2] - 1]]
                    if(mol.GetAtom(ia[0]).GetAtomicNum() > mol.GetAtom(ia[2]).GetAtomicNum()):
                        continue
                    key1 = self.sortfirstlast(sortedlist)
                    key2 = 'strbnd%7d%6d%6d%11.4f%10.4f' % (key1[0], key1[1], key1[2], v[skey][0], v[skey][1])
                    key1string = '%d %d %d' % (key1[0], key1[1], key1[2])
                    d.update({key1string : key2})
                    if(v[skey][0] == 0 and v[skey][1] == 0):
                        del d[key1string]
        x = []
        #sortedtuple = sorted(d.items(), key=lambda k: (k.split()[1],k.split()[0],k.split()[2]))
        #x = [ t[1] for t in sortedtuple ]
        x=list(d.values())
        return x

    def torguess(self, mol, dorot, rotbnds):
        found = []
        vals = []

        torparamvals4 = dict({ \
        #38 37 37 38 (check)
        '[#1][C][C][#1]' : [1, 2, 3, 4, 0.0, 0.0, 0.299], \
        })

        torparamvals3 = dict({ \
        #38 37 37 39 (check) (is it right?) NOT A REAL MOLECULE, second carbon has 5 bonds according to SMARTS
        '[#1][C][CH2]([#1])([CH3])' : [1, 2, 3, 4, 0.0, 0.0, 0.238], \
        })

        torparamvals2 = dict({ \
        #37 37 37 37
        '[C][CH2][CH2][C]' : [1, 2, 3, 4, .185, .17, .52], \

        #37 37 37 38
        '[C][CH2][C][#1]' : [1, 2, 3, 4, 0.0, 0.0, 0.280], \

        #38 37 37 47 again, why 5 bonds on second carbon?
        '[#1][C][CH2]([#1])([N,c])' : [1, 2, 3, 4, 0.0, 0.0, 0.299], \

        #38 37 37 48
        '[#1][C][CH2][N]' : [1, 2, 3, 4, 0.0, 0.0, .374], \
        })

        torparamvals1 = dict({ \
        #25 24 24 25 NOT REAL, each carbon has 5 bonds according to this
        '[#1][CH3][CH3][#1]' : [1, 2, 3, 4, 0.0, 0.0, 0.299], \

        #25 24 26 26  NOT REAL, first carbon has 5 bonds according to this
        '[#1][CH3][CH2][CH2]' : [1, 2, 3, 4, 0.0, 0.0, 0.341], \

        #25 24 26 27 (check) (don't know why different than 38 37 37 39), NOT REAL, first carbon has 5 bonds according to this
        '[#1][CH3][CH2][#1]' : [1, 2, 3, 4, 0.0, 0.0, 0.299], \

        #24 26 26 24
        '[CH3][CH2][CH2][CH3]' : [1, 2, 3, 4, 0.854, -0.374, 0.108], \

        #27 26 26 27
        '[CH3][CH2][CH2][#1]' : [1, 2, 3, 4, 0.0, 0.0, 0.341], \

        #27 26 26 27
        '[#1][CH2][CH2][#1]' : [1, 2, 3, 4, 0.0, 0.0, 0.299], \

        #34 33 35 36
        '[#1][CH3][O][#1]' : [1, 2, 3, 4, 0.0, 0.0, .274], \

        #36 35 37 34
        '[#1][O][C][#1]' : [1, 2, 3, 4, 0.0, 0.0, .274], \

        #36 35 37 37
        '[#1][O][C][C]' : [1, 2, 3, 4, -1.447, .531, .317], \

        #37 35 37 41
        '[C][O][C][#1]' : [1, 2, 3, 4, 0.0, 0.0, 0.597], \

        #36 35 40 34
        '[#1][O][CH1][#1]' : [1, 2, 3, 4, 0.0, 0.0, 0.266], \

        #36 35 40 37
        '[#1][O][CH1][C]' : [1, 2, 3, 4, -1.372, 0.232, 0.40], \

        #36 35 78 78
        '[#1][O][c][c]' : [1, 2, 3, 4, 0.0, 2.081, 0.0], \

        #34 37 37 37 (check)
        '[#1][CH2]([OH1])[C][C]' : [1, 2, 4, 5, 0.0, 0.0, 0.280], \

        #34 37 37 38
        '[#1][CH2]([OH1])[C][#1]' : [1, 2, 4, 5, 0.0, 0.0, .424], \

        #34 37 37 39 (check) (why different than above)
        '[#1][CH2]([OH1])[CH2]([#1])([CH3])' : [1, 2, 4, 5, 0.0, 0.0, .238], \

        #35 37 37 37
        '[O][CH2][C][C]' : [1, 2, 3, 4, -1.150, 0.0, 1.280], \
	#Aniline parameters
	#'[c^2][c^2][N^2][#1]' : [ 1,2,3,4, 0.0, 0.5, 0.0],\
	#'[c^2][c^2][N][#6]': [ 1,2,3,4, 0.0, 1.0, 0.0],\
        #benzoic acid parameters
	#'[c^2][c^2](C=O)':[ 1,2,3,4, 0.0, 4.8, 0.0],\
	#'[c^2][c^2](C=O)[O^2]':[ 1,2,3,5, 0.0, 7.8, 0.0],\
	#35 37 37 38
        '[O][CH2][C][#1]' : [1, 2, 3, 4, 0.0, 0.0, 0.3], \

        #35 37 37 39 (not needed, same as 35 37 37 38)
        #'[O][CH2][C][#1]'

        #37 37 37 47
        '[C][CH2][CH2]([#1])([N,c])' : [1, 2, 3, 4, 0.0, 0.0, 0.280], \

        #37 37 37 48
        '[C][CH2][CH2][N]' : [1, 2, 3, 4, -0.302, .696, .499], \

        #37 37 37 50 (check) (am i gettin all the possible dihedrals)
        '[CH2]([N])([CH2][CH2][#1])' : [1, 3, 4, 5, 0.0, 0.0, .299], \
        '[CH2]([CH2][CH2])(N)([#1])' : [1, 2, 3, 5, 0.0, 0.0, .299], \

        #37 37 37 70
        '[C][CH2][CH2]([#1])(S(=O)(=O)([O-]))' : [1, 2, 3, 4, 0.0, 0.0, 0.280], \

        #37 37 37 71 (check) (needs_work) (should the torsion be this small)
        '[C][CH2][CH2][S](=O)(=O)([O-])' : [1, 2, 3, 4, 0.0, 0.0, 0.280], \

        #38 37 37 54
        '[#1][C][CH2][N](C=O)' : [1, 2, 3, 4, 0.0, 0.0, .500], \

        #38 37 37 57
        '[#1][C][CH2]([#1])(N(C=O))' : [1, 2, 3, 4, 0.0, 0.0, 0.299], \

        #38 37 37 70
        '[#1][C][C]([#1])(S(=O)(=O)([O-]))' : [1, 2, 3, 4, 0.0, 0.0, .299], \

        #38 37 37 71
        '[#1][C][C][S](=O)(=O)([O-])' : [1, 2, 3, 4, 0.0, 0.0, .238], \

        #38 37 37 78
        '[#1][C][CH2][c]' : [1, 2, 3, 4, 0.0, 0.0, 0.5], \

        #38 37 37 81 (check) (not necessary, same as above)
        '[#1][C][CH2][c](n)' : [1, 2, 3, 4, 0.0, 0.0, 0.5], \

        #39 37 37 47 (check) (needs_work)
        '[#1][CH2]([CH3])[CH2]([#1])([N,c])' : [1, 2, 4, 5, 0.0, 0.0, .238], \

        #39 37 37 48 (check) (same problem as above)
        '[#1][CH2]([CH3])[CH2][N]' : [1, 2, 4, 5, 0.0, 0.0, .374], \

        #39 37 37 70
        '[#1][CH2]([CH3])[CH2]([#1])(S(=O)(=O)([O-]))' : [1, 2, 4, 5, 0.0, 0.0, 0.299], \

        #39 37 37 71 (check) (how is torsion here less than above)
        '[#1][CH2]([CH3])[CH2](S(=O)(=O)([O-]))' : [1, 2, 4, 5, 0.0, 0.0, 0.238], \

        #48 37 37 50 (check) (.374 is repeated many times, could be condensed)
        '[N][CH2][C][#1]' : [1, 2, 3, 4, 0.0, 0.0, .374], \

        #50 37 37 50
        '[#1][C][CH2]([#1])([CH2]N)' : [1, 2, 3, 4, 0.0, 0.0, 0.299], \
        '[#1][C][CH2]([#1])(N)' : [1, 2, 3, 4, 5, 0.0, 0.0, 0.299], \

        #38 37 40 34
        '[#1][C][C]([#1])([OH1])' : [1, 2, 3, 4, 0.0, 0.0, .238], \

        #38 37 40 35
        '[#1][C][C][OH1]' : [1, 2, 3, 4, 0.0, 0.0, 0.3], \

        #38 37 40 37
        '[#1][C][C]([C])([OH1])' : [1, 2, 3, 4, 0.0, 0.0, 0.28], \

        #37 37 48 37
        '[C][CH2][N][C]' : [1, 2, 3, 4, 0.958, -0.155, .766], \

        #37 37 48 49
        '[C][CH2][N][#1]' : [1, 2, 3, 4, -.107, .512, .365], \

        #39 37 48 37 (check) (not needed, same as below)
        #'[#1][CH2]([CH3])[N][C]' : [1, 2, 4, 5, 0.072, -0.012,, 0.563], \

        #47 37 48 37
        '[#1][C][N][C]' : [1, 2, 3, 4, 0.072, -0.012, 0.563], \

        #47 37 48 49
        '[#1][C][N][#1]' : [1, 2, 3, 4, 0.0, 0.661, 0.288], \

        #50 37 48 37 (check) (confused about how this is different than 47 37 48 37)
        '[#1][CH2;R][N;R][CH2;R]' : [1, 2, 3, 4, .121, -.648, .199], \

        #50 37 48 49 (check) (why same torsion as above?)
        '[#1][CH2;R][N;R][#1]' : [1, 2, 3, 4, .121, -.648, .199], \
	
        #56 37 51 53 note
        '[#1][C]C(=O)([N])' : [1, 2, 3, 4, 0.0, 0.0, .235], \

        #56 37 51 54
        '[#1][C][C](N)(=O)' : [1, 2, 3, 4, 0.0, 0.0, -.01], \

        #37 37 54 51
        '[C][CH2]NC=O' : [1, 2, 3, 4, 0.660, -.456, .254], \

        #37 37 54 55
        '[C][CH2]N([#1])(C=O)' : [1, 2, 3, 4, -.660, -.420, -.254], \

        #57 37 54 37
        '[#1][C]N([C])(C=O)' : [1, 2, 3, 4, 0.0, 0.0, .460], \

        #57 37 54 51
        '[#1][C]NC=O' : [1, 2, 3, 4, 0.0, 0.0, -.126], \

        #57 35 54 55
        '[#1][C]N([#1])(C=O)' : [1, 2, 3, 4, 0, 0, 0], \

        #62 37 60 53 note
        '[#1][C]C(=O)([O])' : [1, 2, 3, 4, -.154, .044, -.086], \

        #62 37 60 58
        '[#1][C]C([OH1])(=O)' : [1, 2, 3, 4, .250, .85, .0], \

        #62 37 60 61
        '[#1][C]C([#1])(=O)' : [1, 2, 3, 4, .115, .027, .285], \

        #37 37 71 72 (check) (best way to do this??)
        '[C][CH2][S](=O)(=O)([O-])' : [1, 2, 3, 4, 0.0, 0.0, 0.0], \

        '[C][CH2][S]([O-])(=O)(=O)' : [1, 2, 3, 4, 0.0, 0.0, 0.0], \

        #70 37 71 72
        '[#1][C][S](=O)(=O)([O-])' : [1, 2, 3, 4, 0.0, 0.0, 0.0], \

        '[#1][C][S]([O-])(=O)(=O)' : [1, 2, 3, 4, 0.0, 0.0, 0.0], \

        #37 37 78 78
        '[C][CH2]cc' : [1, 2, 3, 4, -.8, -.1, -.55], \

        #38 37 78 78
        '[#1][C]cc' : [1, 2, 3, 4, 0.0, 0.0, -.09], \

        #47 37 78 78 (not needed, same as above)
        #37 37 81 80
        '[C][CH2]cn' : [1, 2, 3, 4, -.8, -.1, -.55], \

        #37 37 81 81
        '[C][CH2]c(c(n))(n)' : [1, 2, 3, 4, -.8, -.1, -.55], \

        #38 37 81 80
        '[#1][C]cn' : [1, 2, 3, 4, 0.0, 0.0, .299], \

        #38 37 81 81
        '[#1][C]c(c(n))(n)' : [1, 2, 3, 4, 0.0, 0.0, .299], \

        #37 51 54 37
        '[C]C(=O)N[C]' : [1, 2, 4, 5, -1.0, 2.0, 2.05], \

        #37 51 54 55
        '[C]C(=O)N[#1]' : [1, 2, 4, 5, 0.0, 1.2, .8], \

        #52 51 54 37
        '[#1]C(=O)N[C]' : [1, 2, 4, 5, 0.0, 2.25, 0.0], \

        #52 51 54 55
        '[#1]C(=O)N[#1]' : [1, 2, 4, 5, 0.0, 0.5, 0.35], \

        #53 51 54 37
        'O=CN[C]' : [1, 2, 3, 4, 1.0, 2.25, -2.25], \

        #53 51 54 55
        'O=CN[#1]' : [1, 2, 3, 4, 0.0, -.664, -.357], \

        #61 51 83 83
        '[#1]C(=O)ccncccc' : [1, 2, 4, 5, -.3, 8.0, 0.0], \
        '[#1]C(=O)cccnccc' : [1, 2, 4, 5, -.3, 8.0, 0.0], \
        '[#1]C(=O)ccccncc' : [1, 2, 4, 5, -.3, 8.0, 0.0], \

        #85 51 83 83
        'O=Cccncccc' : [1, 2, 4, 5, -.3, 8.0, 0.0], \
        'O=Ccccnccc' : [1, 2, 4, 5, -.3, 8.0, 0.0], \
        'O=Cccccncc' : [1, 2, 4, 5, -.3, 8.0, 0.0], \

        #59 58 60 37
        '[#1]OC([C])(=O)' : [1, 2, 3, 4, 0.0, 5.390, 1.230], \

        #59 58 60 53
        '[#1]OC=O' : [1, 2, 3, 4, -1.2, 5.390, .4], \

        #59 58 60 61
        '[#1]OC([#1])(=O)' : [1, 2, 3, 4, -.3, 5.390, 0.0], \

        #65 60 66 60
        '[#1][C][S][C]' : [1, 2, 3, 4, 0, 0, .660], \

        #65 60 66 67
        '[#1][C][S][#1]' : [1, 2, 3, 4, 0, 0, .383], \

        #68 60 66 60 (check)
        '[CH3][CH2][S][C]' : [1, 2, 3, 4, -.44, -.26, .6], \

        #68 60 66 67
        '[CH3][CH2][S][#1]' : [1, 2, 3, 4, -1.096, .079, .384], \

        #65 60 68 69 (check)
        '[#1][CH2]([CH3]([#1]))[S]' : [1, 2, 3, 4, 0, 0, .238], \

        #66 60 68 69 (check)
        'S[CH2][CH3][#1]' : [1, 2, 3, 4, 0, 0, .475], \

        #74 73 74 75
        'CCC#N' : [1, 2, 3, 4, 0.0, 0.0, 0.0], \

        #76 76 76 76
        'cccc' : [1, 2, 3, 4, -.670, 4.004, 0.0], \

        #76 76 76 77
        'ccc[#1]' : [1, 2, 3, 4, .550, 4.534, -.550], \

        #76 76 76 89 (check) (should n be positive)
        'ccc[n+]' : [1, 2, 3, 4, 0.0, 5.470, 0.0], \

        #77 76 76 77
        '[#1]cc[#1]' : [1, 2, 3, 4, 0.0, 4.072, 0.0], \

        #77 76 76 89 (check)
        '[#1]cc[n+]' : [1, 2, 3, 4, -3.150, 3.0, 0.0], \

        #76 76 89 76
        'cc[n+]c' : [1, 2, 3, 4, 0.0, 14.0, 0.0], \

        #76 76 89 90
        'cc[n+][#1]' : [1, 2, 3, 4, -3.15, 8.0, 0], \

        #77 76 89 76
        '[#1]c[n+]c' : [1, 2, 3, 4, -6.65, 20.0, 0], \

        #77 76 89 90
        '[#1]c[n+][#1]' : [1, 2, 3, 4, -.530, 3.0, 0.0], \

        #35 78 78 78
        'Occc' : [1, 2, 3, 4, 0.0, 4.47, 0.0], \

        #35 78 78 79
        'Occ[#1]' : [1, 2, 3, 4, 0.0, 4.470, 0.0], \

        #37 78 78 78
        '[C]ccc' : [1, 2, 3, 4, -.610, 4.212, 0.0], \

        #37 78 78 79
        '[C]cc[#1]' : [1, 2, 3, 4, 0.0, 6.104, 0.0], \

        #78 78 78 78 (check)
        '[cH0]ccc' : [1, 2, 3, 4, -.670, 4.004, 0.0], \
        'c[cH0]cc' : [1, 2, 3, 4, -.670, 4.004, 0.0], \

        #78 78 78 79
        '[cH0]cc[#1]' : [1, 2, 3, 4, 0.550, 4.534, -0.550], \
        'c[cH0]c[#1]' : [1, 2, 3, 4, 0.550, 4.534, -0.550], \

        #78 78 78 88 (check)
        'cccC(N)(=N)' : [1, 2, 3, 4, -.610, 4.212, 0.0], \

        #79 78 78 79 (check)
        '[#1]cc([#1])([cH0])' : [1, 2, 3, 4, 0.0, 4.072, 0.0], \
        '[#1]cc([#1])(c[cH0])' : [1, 2, 3, 4, 0.0, 4.072, 0.0], \

        #79 78 78 88
        '[#1]ccC(N)(=N)' : [1, 2, 3, 4, 0.0, 6.104, 0.0], \

        #78 78 88 86
        'ccC(N)(=N)' : [1, 2, 3, 4, 0.0, 2.304, 0.0], \
        'ccC(=N)(N)' : [1, 2, 3, 4, 0.0, 2.304, 0.0], \

        #43 80 81 37
        '[#1]nc[C]' : [1, 2, 3, 4, 0.0, 4.104, 0.0], \

        #43 80 81 80
        '[#1]ncn' : [1, 2, 3, 4, -2.744, 15.0, 0.0], \

        #43 80 81 81 (check)
        '[#1]ncc(n)' : [1, 2, 3, 4, -3.150, 8.0, 0.0], \

        #43 80 81 82
        '[#1]nc[#1]' : [1, 2, 3, 4, -.530, 3.0, 0.0], \

        #81 80 81 37
        'cnc[C]' : [1, 2, 3, 4, 0.0, 4.212, 0.0], \

        #81 80 81 80
        'cncn' : [1, 2, 3, 4, 0.0, 15.0, 0.0], \

        #81 80 81 81
        'cncc(n)' : [1, 2, 3, 4, 0.0, 14.0, 0.0], \

        #81 80 81 82
        'cnc[#1]' : [1, 2, 3, 4, 0.0, 7.0, 0.0], \

        #43 80 83 77 (not needed, same as 43 80 81 82)
        #'[#1]nc[#1]' : [1, 2, 3, 4, -.530, 3.0, 0.0], \

        #43 80 83 83 (not needed, same as 43 80 81 81)
        #'[#1]ncc' : [1, 2, 3, 4, -3.150, 8.0, 0.0], \

        #83 80 83 77
        'cnc([#1])cccc' : [1, 2, 3, 4, -6.650, 20.0, 0.0], \

        #83 80 83 83
        'cnccccc' : [1, 2, 3, 4, 0.0, 14.0, 0.0], \

        #37 81 81 80
        '[C]c(n)cn' : [1, 2, 4, 5, 0.0, 4.212, 0.0], \

        #37 81 81 82
        '[C]c(n)c([#1])(n)' : [1, 2, 4, 5, 0.0, 4.102, 0.0], \

        #80 81 81 80
        'nccn' : [1, 2, 3, 4, .9, 15.0, 0.0], \

        #80 81 81 82
        'ncc([#1])(n)' : [1, 2, 3, 4, -3.15, 3.0, 0.0], \

        #82 81 81 82
        '[#1]c(n)c([#1])(n)' : [1, 2, 4, 5, 0.0, 11.5, 0.0], \

        #51 83 83 77 (check)
        'C(=O)cc([#1])ncccc' : [1, 3, 4, 5, 0.0, 6.104, 0.0], \
        'C(=O)cc([#1])cnccc' : [1, 3, 4, 5, 0.0, 6.104, 0.0], \
        'C(=O)cc([#1])ccncc' : [1, 3, 4, 5, 0.0, 6.104, 0.0], \

        #51 83 83 80
        'C(=O)ccn' : [1, 3, 4, 5, 0.0, 5.470, 0.0], \

        #51 83 83 83
        'C(=O)cccnccc' : [1, 3, 4, 5, -.610, 4.212, 0.0], \
        'C(=O)ccccncc' : [1, 3, 4, 5, -.610, 4.212, 0.0], \

        #77 83 83 77
        '[#1]cc[#1]ncccc' : [1, 2, 3, 4, 0.0, 7.072, 0.0], \
        '[#1]cc[#1]cnccc' : [1, 2, 3, 4, 0.0, 7.072, 0.0], \
        '[#1]cc[#1]ccncc' : [1, 2, 3, 4, 0.0, 7.072, 0.0], \

        #77 83 83 80
        '[#1]ccn' : [1, 2, 3, 4, -3.150, 3.0, 0.0], \

        #77 83 83 83
        '[#1]cccnccc' :[1, 2, 3, 4, 0.250, 5.534, -.550], \
        '[#1]ccccncc' :[1, 2, 3, 4, 0.250, 5.534, -.550], \

        #77 83 83 84 (check)
        '[#1]cc([CH2])cnccc' : [1, 2, 3, 4, 0.0, 6.104, 0.0], \
        '[#1]cc([CH2])ccncc' : [1, 2, 3, 4, 0.0, 6.104, 0.0], \

        #80 83 83 83
        'nccc' : [1, 2, 3, 4, 0.0, 5.470, 0.0], \

        #83 83 83 83
        'ccccncc' : [1, 2, 3, 4, -.670, 4.304, 0.0], \

        #83 83 83 84
        'ccc([CH2])nccc' : [1, 2, 3, 4, -.610, 4.212, 0.0], \
        'ccc([CH2])cncc' : [1, 2, 3, 4, -.610, 4.212, 0.0], \

        #83 83 84 38
        'cc([CH2][#1])ncccc' : [1, 2, 3, 4, 0.0, 0.0, 0.341], \
        'cc([CH2][#1])cnccc' : [1, 2, 3, 4, 0.0, 0.0, 0.341], \
        'cc([CH2][#1])ccncc' : [1, 2, 3, 4, 0.0, 0.0, 0.341], \

        #83 83 84 84
        'cc([CH2][CH3])ncccc' : [1, 2, 3, 4, 0.260, -0.255, 0.260], \
        'cc([CH2][CH3])cnccc' : [1, 2, 3, 4, 0.260, -0.255, 0.260], \
        'cc([CH2][CH3])ccncc' : [1, 2, 3, 4, 0.260, -0.255, 0.260], \

        #38 84 84 38
        '[#1][CH2]([CH3]([#1]))(cnccccc)' : [1, 2, 3, 4, 0.0, 0.0, .299], \
        '[#1][CH2]([CH3]([#1]))(ccncccc)' : [1, 2, 3, 4, 0.0, 0.0, .299], \
        '[#1][CH2]([CH3]([#1]))(cccnccc)' : [1, 2, 3, 4, 0.0, 0.0, .299], \
        '[#1][CH2]([CH3]([#1]))(ccccncc)' : [1, 2, 3, 4, 0.0, 0.0, .299], \

        #38 84 84 83
        '[#1][CH2]([CH3])(cnccccc)' : [1, 2, 3, 4, 0.0, 0.0, .341], \
        '[#1][CH2]([CH3])(ccncccc)' : [1, 2, 3, 4, 0.0, 0.0, .341], \
        '[#1][CH2]([CH3])(cccnccc)' : [1, 2, 3, 4, 0.0, 0.0, .341], \
        '[#1][CH2]([CH3])(ccccncc)' : [1, 2, 3, 4, 0.0, 0.0, .341], \

        #87 86 88 78
        '[#1][N][C](c)(=N)' : [1, 2, 3, 4, 0.0, 4.0, 0.0], \

        #87 86 88 86
        '[#1]NC=N' : [1, 2, 3, 4, 0.0, 4.0, 0.0], \
        # DB06770H3D
        '[O^3][C^3][c^2][c^2][c^2][c^2][c^2][c^2]' : [1,2,3,4,0,-0.208,0], \
        # DB11359H3D
        '[C^3][O^2][c^2][c^2][c^2][c^2][c^2][c^2][O^2]' : [1,2,3,8,0,2.255,0], \
        # DB01440H3D
        '[O^3][C^3][C^3][C^3][C^2](=[O^2])[O-^2]' : [3,4,5,6,0,0.169,0], \
        # DB01440H3D
        '[O^3][C^3][C^3][C^3][C^2](=[O^2])[O-^2]' : [2,3,4,5,3.573,-1.868,2.086], \
        # DB01440H3D
        '[O^3][C^3][C^3][C^3][C^2](=[O^2])[O-^2]' : [1,2,3,4,-0.510,-0.068,3.633], \
        # DB06756H3D
        '[O-^2][C^2](=[O^2])[C^3][N+^3]([C^3])([C^3])[C^3]' : [2,3,4,5,0,1.550,0], \
        # DB06756H3D
        '[O-^2][C^2](=[O^2])[C^3][N+^3]([C^3])([C^3])[C^3]' : [2,4,5,6,0,0,-0.073], \
        # DB09563H3D
        '[O^3][C^3][C^3][N+^3]([C^3])([C^3])[C^3]' : [1,2,3,4,5.591,-2.523,2.668], \
        # DB09563H3D
        '[O^3][C^3][C^3][N+^3]([C^3])([C^3])[C^3]' : [2,3,4,5,0,0,0.745], \
        })

        torvals1 = dict({ \
        '[#6;D3]~[#6;D3]~[#6;D3]~[#6;D3]' : [-0.335, 2.00, 0], \
        '[#6;D3]~[#6;D3]~[#6;D3]~[#6;D4]' : [-0.305, 2.105, 0], \
        '[#6;D4]~[#6;D3]~[#6;D3]~[#6;D4]' : [0, 4.0, 0], \
        '[#6]~[#6;D3]~[#6;D4]~[#6]' : [-0.40, -0.05, -0.275], \
        '[#6]~[#6;D4]~[#6;D4]~[#6]' : [0.09, 0.085, 0.26], \
        '[#1]~[#6;D3]~[#6;D3]~[#1]' : [0, 2.035, 0], \
        '[#1]~[#6;D4]~[#6;D4]~[#6]' : [0, 0, 0.17], \
        '[#1]~[#6;D3]~[#6;D3]~[#6;D3]' : [0, 3.05, 0], \
        '[#1]~[#6;D3]~[#6;D3]~[#6;D4]' : [0, 3.05, 0], \
        '[#1]~[#6;D4]~[#6;D3]~[#6]' : [0, 0, -0.045], \
        '[#1]~[#6;D3]~[#6;D3]~[#7]' : [-1.575, 1.5, 0], \
        '[#6]~[#6;D3]~[#6;D3]~[#8]' : [0, 2.235, 0], \
        '[#1]~[#6]~[#8;D3]~[#6;D3]' : [0, 0, 2.235], \
        '[#6]~[#6;D4]~[#8]~[#1]' : [-0.885, 0.115, 0.38], \
        '[#6]~[#6;D3]~[#8]~[#1]' : [0, 1.175, 0], \
        })

        torvals2 = dict({ \
        '[#1]~[#6]~[#6]~[#1]' : [0, 0, 0.15], \
        '[#1]~[#6]~[#6]~[#7]' : [0, 0, 0.25], \
        '[#1]~[#6]~[#6]~[#8]' : [0, 0, 0.15], \
        '[#6]~[#6]~[#6]~[#8]' : [-0.575, 0, 0.64], \
        '[#8]~[#6]~[#6]~[#8]' : [1.11, -0.69, -0.59], \
        '[#1]~[#6]~[#8]~[#1]' : [0, 0, 0.135], \
        '[#1]~[#6]~[#8]~[#6]' : [0, 0, 0.355], \
        '[#6]~[#6]~[#8]~[#6]' : [1, -0.75, 0.445], \
        })

        torvals3 = dict({ \
        '[*]~[#6;D3]~[#6;D3]~[*]' : [0, 1.25, 0], \
        '[#1]~[#6]~[#8]~[*]' : [0, 0, .375], \
        '[*]~[#6;D3]~[#8]~[*]' : [0, 1.25, 0], \
        '[*]~[#6;D4]~[#8]~[*]' : [1, -0.75, 0.445], \
        })

        torvals4 = dict({ \
        '[*]~[#6]~[#6]~[*]' : [0, 0 , 0.15], \
        '[*]~[#6]~[#15]~[*]' : [0, 1.25 , 0.25], \
        '[*]~[#6]~[#16]~[*]' : [0, 0 , 0.25], \
        #(check) (made this number up)
        '[*]~[#6]~[#7]~[*]' : [0, -.460, 0],\
        '[*]~[#8]~[#15]~[*]' : [-1, -0.84 , -0.40], \
        '[*]~[#8]~[#16]~[*]' : [-0.75, -1.00, -0.40], \
        })

        torvals5 = dict({ \
      #(check) (i made these numbers up. I put it high to restrict movement)
      '[*]~cc~[*]' : [0, 7, 0], \
      '[*]~cn~[*]' : [0, 7, 0], \
      #'[*]~cC~[*]' : [0.260, -0.255, 0.260], \
      #'[*]~cN~[*]' : [0.260, -0.255, 0.260], \
      '[*]~[C]=[C]~[*]' : [0, 5, 0], \
        })

        torvals6 = dict({ \
        '[*]~[*]~[*]~[*]' : [0, 0, 0] \
        })

        vals.append(torvals6)
        if(dorot):
            vals.append(torvals4)
            vals.append(torvals3)
            vals.append(torvals2)
            vals.append(torvals1)
            vals.append(torparamvals4)
            vals.append(torparamvals3)
            vals.append(torparamvals2)
        vals.append(torvals5)
        vals.append(torparamvals1)

        
        torsunit = .5
        torkeytoSMILES={}
        torkeytoindexlist={}
        d = dict()
        zeroed = False
        self.logfh.write('****************************************************************************************************'+'\n')
        indextoneighbidxs=self.FindAllNeighborIndexes(mol)
        for v in vals:
            for skey in iter(v):
                openbabel.OBSmartsPattern.Init(self.sp,skey)
                self.sp.Match(mol)
                for ia in self.sp.GetMapList():
                    if(len(v[skey]) == 7):
                        sortedlist = [self.idxtoclass[ia[v[skey][0] - 1] - 1], self.idxtoclass[ia[v[skey][1] - 1] - 1], self.idxtoclass[ia[v[skey][2] - 1] - 1], \
                        self.idxtoclass[ia[v[skey][3] - 1] - 1]]
                    else:
                        sortedlist = [self.idxtoclass[ia[0] - 1], self.idxtoclass[ia[1] - 1], self.idxtoclass[ia[2] - 1], self.idxtoclass[ia[3] - 1]]
                    key1 = self.sorttorsion(sortedlist)
                    # grab the middle two atoms and find all of their neighbors if those indexes are also within the matched indexes from SMARTS, then this torsion is transferable
                    firstneighborindexes=indextoneighbidxs[int(ia[1])]
                    secondneighborindexes=indextoneighbidxs[int(ia[2])]
                    neighborindexes=firstneighborindexes+secondneighborindexes
                    check=self.CheckIfNeighborsExistInSMARTMatch(neighborindexes,ia)
                    if(len(v[skey]) == 7):
                        bidx=ia[v[skey][1] - 1] 
                        cidx=ia[v[skey][2] - 1]
                    else:
                        bidx=ia[1]
                        cidx=ia[2]
                    b=mol.GetAtom(bidx)
                    c=mol.GetAtom(cidx)
                    bond=mol.GetBond(bidx,cidx)
                    if check==False and bond.IsInRing()==False and b.IsInRing()==False and c.IsInRing()==False:
                        zeroed=True
                    if(dorot):
                        for r in rotbnds:
                            sortr = self.sorttorsion([self.idxtoclass[r[0] - 1],self.idxtoclass[r[1] - 1],self.idxtoclass[r[2] - 1],self.idxtoclass[r[3] - 1]])
                            if(key1 == sortr):
                                zeroed = True
                                break
                    if(len(v[skey]) == 7):
                        if(zeroed):
                            key2 = 'torsion%6d%6d%6d%6d%11.4f 0.0 1 %10.4f 180.0 2 %10.4f 0.0 3' % (key1[0], key1[1], key1[2], key1[3], 0.0, 0.0, 0.0)
                        else:
                            key2 = 'torsion%6d%6d%6d%6d%11.4f 0.0 1 %10.4f 180.0 2 %10.4f 0.0 3' % (key1[0], key1[1], key1[2], key1[3], .5*v[skey][4]/torsunit, .5*v[skey][5]/torsunit, .5*v[skey][6]/torsunit)
                    else:
                        if(zeroed):
                            key2 = 'torsion%6d%6d%6d%6d%11.4f 0.0 1 %10.4f 180.0 2 %10.4f 0.0 3' % (key1[0], key1[1], key1[2], key1[3], 0.0, 0.0, 0.0)
                        else:
                            key2 = 'torsion%6d%6d%6d%6d%11.4f 0.0 1 %10.4f 180.0 2 %10.4f 0.0 3' % (key1[0], key1[1], key1[2], key1[3], v[skey][0]/torsunit, v[skey][1]/torsunit, v[skey][2]/torsunit)
                    key1string = '%d %d %d %d' % (key1[0], key1[1], key1[2], key1[3])

                    torkeytoSMILES.update({key1string:skey})
                    torkeytoindexlist[key1string]=ia
                    d.update({key1string : key2})
                    zeroed = False
        
        for key1string,key2 in d.items():
            skey=torkeytoSMILES[key1string]
            indexlist=torkeytoindexlist[key1string]
            stringlist=[str(i) for i in indexlist]
            stringindexlist=','.join(stringlist)
            keysplit=key2.split()
            first=float(keysplit[5])
            second=float(keysplit[8])
            third=float(keysplit[11])
            if first==0 and second==0 and third==0: # then dont print
                pass
            else:
                self.logfh.write('Torsion parameters for '+key2+ ' assigned from SMILES '+skey+' '+stringindexlist+'\n')
        
        x = []

        for v in dict.values(d):
            x.append(v)
            if(float(v.split()[5]) == 0.0 and float(v.split()[8]) == 0.0 and float(v.split()[11]) == 0.0): self.missed_torsions.append([int(v.split()[1]),int(v.split()[2]),int(v.split()[3]),int(v.split()[4])])
        #print('d torsion',d)
        #sortedtuple = sorted(d.items(), key=lambda k: (k.split()[1],k.split()[2],k.split()[0],k.split()[3]))
        #print(' sortedtuple ',sortedtuple)
        #x = [ t[1] for t in sortedtuple ]
        x=list(d.values())
        return x

    def FindAllNeighborIndexes(self,mol):
        indextoneighbidxs={}
        for atm in openbabel.OBMolAtomIter(mol):
            atmidx=atm.GetIdx()
            iteratomatom = openbabel.OBAtomAtomIter(atm)
            if atmidx not in indextoneighbidxs.keys():
                indextoneighbidxs[atmidx]=[]
            for neighbatm in iteratomatom:
                neighbatmidx=neighbatm.GetIdx()
                if neighbatmidx not in indextoneighbidxs[atmidx]:
                    indextoneighbidxs[atmidx].append(neighbatmidx)
                

        return indextoneighbidxs

    def CheckIfNeighborsExistInSMARTMatch(self,neighborindexes,smartsindexes):
        check=True
        for idx in neighborindexes:
            if idx not in smartsindexes:
                check=False
        return check

    def opbguess(self, opbendvals):
        x = []
        clsopbvallist = {}
        keytosmarts={}
        for (opbkey, opbval) in opbendvals:
            opblist = opbkey.split()
            covlkey = (self.idxtoclass[int(opblist[0])-1], self.idxtoclass[int(opblist[1]) - 1],int(opblist[2]),int(opblist[3]))
            if ((covlkey not in clsopbvallist) or opbval):
                clsopbvallist[covlkey] = opbval[0]
                keytosmarts[covlkey]=opbval[2]
        sortedopbparmlist = sorted([(key, value) for
            (key,value) in clsopbvallist.items()])
        for opbparm in sortedopbparmlist:
            key=opbparm[0]
            smarts=keytosmarts[key]
            kstring='opbend %6d%6d%6d%6d%11.4f' % (key[0],key[1],key[2],key[3], opbparm[1]*71.94)
            x.append(kstring)
            #self.logfh.write(kstring+' matched from '+smarts+' has parameters '+str(opbparm[1]*71.94)+'\n')
        return x

    def pitorguess(self,mol):
        vals = []
        pitorvals = dict({ \
        #51 54
        'C(=O)N' : [1, 3, 6.85], \
        #76 76 or 78 78
        'cc' : [1, 2, 6.85] \
        })
        vals.append(pitorvals)
        d = dict()
        for v in vals:
            for skey in iter(v):
                openbabel.OBSmartsPattern.Init(self.sp,skey)
                self.sp.Match(mol)
                for ia in self.sp.GetMapList():
                    sortedlist = [self.idxtoclass[ia[v[skey][0] - 1] - 1], self.idxtoclass[ia[v[skey][1] - 1] - 1]]
                    sortedlist.sort()
                    key1 = sortedlist
                    key1string = '%d %d ' % (key1[0], key1[1])
                    key2 = 'pitors%7d%6d%11.4f' % (key1[0], key1[1], v[skey][2])
                    d.update({key1string : key2})
        x = []
        for v in dict.values(d):
            x.append(v)
        #sortedtuple = sorted(d.items(),key=lambda k: (k.split()[0],k.split()[1]))
        #x = [ t[1] for t in sortedtuple ]
        return x

    def change_format(self,mol,strbnds):
        new_sbd = dict()
        new_sbs = []
        for x in strbnds:
            hydrogen = False
            sb1 = int(x.split()[1])
            sb2 = int(x.split()[2])
            sb3 = int(x.split()[3])
            sbv = float(x.split()[4])
            sbvl = [0.0, 0.0, 0.0]
            for k in range(len(self.idxtoclass)):
                if self.idxtoclass[k] == sb1 and mol.GetAtom(k+1).GetAtomicNum() == 1:
                    hydrogen = True
                    break
                elif self.idxtoclass[k] == sb3 and mol.GetAtom(k+1).GetAtomicNum() == 1:
                    hydrogen = True
                    break
            if sb2 not in new_sbd:
                if hydrogen:
                    sbvl[1] = sbv
                else:
                    sbvl[0] = sbv
                new_sbd.update({sb2 : sbvl[:]})
            else:
                sbvl = new_sbd[sb2][:]
                if hydrogen:
                    sbvl[1] = sbv
                else:
                    sbvl[0] = sbv
                new_sbd.update({sb2 : sbvl[:]})
        for k,v in new_sbd.items():
            new_sbs.append('strbnd%7d%11.4f%10.4f%10.4f' % (k,v[0],v[1],v[2]))
        return new_sbs[:]

    def appendtofile(self, vf, mol,dorot,rotbndlist):
        opbendvals,rotbnds=self.gen_valinfile(mol,rotbndlist)
        temp=open(vf,'r')
        results=temp.readlines()
        temp.close()
        foundatomblock=False
        atomline=False
        wroteout=False
        tempname=vf.replace('.key','_temp.key')
        f=open(tempname,'w')
        for line in results:
            if 'atom' in line:
                atomline=True
                if foundatomblock==False:
                    foundatomblock=True
            else:
                atomline=False
            if foundatomblock==True and atomline==False and wroteout==False:
                wroteout=True
                f.write('\n')
                for x in self.vdwguess(mol):
                    f.write(x + "\n")
                for x in self.bondguess(mol):
                    f.write(x + "\n")
                for x in self.angguess(mol):
                    f.write(x + "\n")
                for x in self.sbguess(mol):
                    f.write(x + "\n")
                for x in self.opbguess(opbendvals):
                    f.write(x + "\n")
                results=self.torguess(mol,dorot,rotbnds)
                for x in results:
                    f.write(x + "\n")
                for x in self.pitorguess(mol):
                    f.write(x+ "\n")
                f.write('\n')
            else:
                f.write(line)
        f.close()
        os.remove(vf)
        os.rename(tempname,vf)

    def sortfirstlast(self, keylist):
        size = len(keylist)
        if(keylist[0] > keylist[size - 1]):
            temp = keylist[0]
            temp2 = keylist[1]
            keylist[0] = keylist[size - 1]
            keylist[1] = keylist[size - 2]
            keylist[size - 1] = temp
            keylist[size - 2] = temp2
        return keylist

    def sorttorsion(self,keylist):
        if(keylist[1] > keylist[2] or (keylist[1] == keylist[2] and keylist[0] > keylist[3])):
            temp1 = keylist[1]
            keylist[1] = keylist[2]
            keylist[2] = temp1 
            temp2 = keylist[3]
            keylist[3] = keylist[0]
            keylist[0] = temp2
        return keylist
    ## Note: needs change: xyzfile may not be ready when valence is called
    ##      and idxtoclass or array should be passed to the Valence object.
    #def idxToClassInit(self, xyzfname):
        #xyzf = open(xyzfname, "r")
        #xyzf.readline()
        #for line in xyzf:
            #self.idxtoclass.update(
                #{int(line.split()[0]) : int(line.split()[5])})

