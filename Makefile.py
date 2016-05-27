#!/usr/bin/python

import os

# Open a file
dirs = os.listdir("./")

# Generate makefile
for dir in dirs:
	if os.path.isdir(dir):
	        with open("Makefile.tpl", "r") as myfile:
        	        makefile = myfile.read()
	        makefile_src = makefile.replace("EXEC_NAME", str(dir))
	        makefile_dst = open(dir + "/Makefile", "w+")
	        makefile_dst.write(makefile_src)
	        makefile_dst.close()
