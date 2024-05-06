#!/usr/bin/env python
import sys
import re

def normalise(file_location): 
	f = open(file_location, "r")

	for line in f.readlines(): 
		if re.match(r"^[0-9a-fA-F]{8}", line): 
			print("\n"+line.replace(" \t", "    "), end='') 
		if line.startswith("    "):
			print(line.replace(" \t", "    "), end='')



if __name__ == "__main__": 
	normalise(sys.argv[1])
