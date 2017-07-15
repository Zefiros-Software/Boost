import subprocess
import re
import os
import glob
import yaml

def convert(word):
    return ''.join(x or '_' for x in word.split('_'))

def run(cmd):
    return subprocess.Popen(cmd, 
                            stdout=subprocess.PIPE, 
                            stderr=subprocess.PIPE, 
                            stdin=subprocess.PIPE).communicate()
    
tree = {
    'settings': {
    }
}

if len(list(glob.iglob('bin.v2/**/bcp.exe', recursive=True))) == 0:
    run("b2 tools/bcp")
bcp = list(glob.iglob('bin.v2/**/bcp.exe', recursive=True))[0]

print("tree = {")
for i in os.listdir("libs/"):
    out = run( "{0} --list {1}".format(bcp, i) )[0].decode('ascii')
    
    p = re.compile(r"libs\\(\w*)\\")

    mods = set([])
    for line in out.splitlines():

        if line.startswith( "libs" ) and "docs" not in line:
            if p.search(line) is not None:
                if os.path.isdir( "libs/{0}/src".format(p.match(line).group(1)) ):
                    mods.add( p.match(line).group(1) )

    if len( mods ) > 0: 
        print("    {} = {},".format(convert(i), mods))
        #fm.write( "if zpm.option(\"{0}\") then\n".format(convert(i)) )
        #fm.write( "\taddModules( {0} )\n".format(mods) )
        #fm.write( "end\n\n" )

        tree['settings'][convert(i)] = {
            'default': False,
            'reduce': 'anyTrue'
        }

print("}")

print("\n\n\n\n")

print(yaml.dump(tree,default_flow_style=False))