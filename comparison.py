import os,subprocess,sys
logical = sys argv[1]
physical = sys argv[2]

for rootL, dirL, filesL in os.walk(logical):
    for nameL in filesL:
        pathL = os.path.join(rootL, nameL)
        for rootP, dirP, filesP in os.walk(physical):
            for nameP in filesP:
                pathP = os.path.join(rootP, nameP)
                subprocess.call(["java","-cp","mj.jar", "mj.FilesComparator", "-ae", nameL,nameP])