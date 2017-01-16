set -e

# report version
clang --version
gcc --version

cd test/

zpm install-package --allow-install --allow-module
zpm gmake --allow-install

make 

./bin/Test/Boost