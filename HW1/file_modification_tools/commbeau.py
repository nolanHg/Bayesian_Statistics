import sys

if (len(sys.argv) < 2):
	print("\nUsage: python3 commbeau.py <name of file>\n")
	exit()

fname = sys.argv[1]

f = open(fname, "r")
code = f.read()
f.close()

lines = code.split("\n")

f = open(fname, "w")
for k in range(0, len(lines)):
	l = len(lines[k])
	if (l != 0 and lines[k][-1] != "*" and lines[k][0] == "#"):
			str = "\n" + l * "#" + "\n" + lines[k] + "\n" + l * "#" + "\n"
			f.write(str)
	else:
		f.write(lines[k] + "\n")	
	
f.close()	
