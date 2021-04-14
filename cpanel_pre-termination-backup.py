#!/usr/bin/python

import sys
import subprocess
opts = dict(zip(*[iter(sys.argv[1:])]*2))
myuser = opts['user']
dst = "/path/to/terminationbackups"
subprocess.call(["/scripts/pkgacct",myuser,dst])
