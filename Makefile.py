#!/usr/bin/python

import os

# Open a file
path = "./src"
dirs = os.listdir(path)

# Generate makefile
for dir in dirs:
        with open("Makefile.template", "r") as myfile:
                makefile = myfile.read()
        makefile_src = makefile.replace("EXEC_NAME", str(dir))
        makefile_dst = open("src/" + dir + "/Makefile", "w+")
        makefile_dst.write(makefile_src)
        makefile_dst.close()
