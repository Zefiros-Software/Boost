##
## @cond ___LICENSE___
##
## Copyright (c) 2016-2018 Zefiros Software.
##
## Permission is hereby granted, free of charge, to any person obtaining a copy
## of this software and associated documentation files (the "Software"), to deal
## in the Software without restriction, including without limitation the rights
## to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
## copies of the Software, and to permit persons to whom the Software is
## furnished to do so, subject to the following conditions:
##
## The above copyright notice and this permission notice shall be included in
## all copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
## AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
## LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
## OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
## THE SOFTWARE.
##
## @endcond
##
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