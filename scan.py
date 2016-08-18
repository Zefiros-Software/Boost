import subprocess
import re
import os
import json

def convert(word):
    return ''.join(x.capitalize() or '_' for x in word.split('_'))

def run(cmd):
    return subprocess.Popen(cmd, 
                            stdout=subprocess.PIPE, 
                            stderr=subprocess.PIPE, 
                            stdin=subprocess.PIPE).communicate()


fm = open('mod.txt','w')
fo = open('opt.txt','w')
options = {}
#for i in os.listdir("libs/"):
i = "accumulators"
out = run( "bcp --list {0}".format( i ) )[0].decode('ascii')#run( "bcp --list {0}".format( i ) )[0].decode('ascii')

p = re.compile(r"libs\\(\w*)\\")

mods = set([])
print(out)
for line in out.splitlines():

    if line.startswith( "libs" ) and "docs" not in line:
        if p.search(line) is not None:
            mods.add( p.match(line).group(1) )

if len( mods ) > 0: 
    fm.write( "if zpm.option(\"{0}\") then\n".format(convert(i)) )
    fm.write( "\taddModules( {0} )\n".format(mods) )
    fm.write( "end\n\n" )

    options[ convert(i) ] = False

json.dump(options, fo)

fm.close()
fo.close()