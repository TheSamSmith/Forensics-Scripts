import os,subprocess,sys
directory = argv[1]

for root, directories, files in os.walk(directory):
    for name in files:
        print "echo" + os.path.join(root + name)
        subprocess.call(["exiftool", os.path.join(root,name)])