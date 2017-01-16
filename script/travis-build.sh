set -e

# report version
clang --version
gcc --version

cd test/

premake5 install-package --allow-install --allow-module
premake5 gmake --allow-install

make 

./bin/Test/Boost