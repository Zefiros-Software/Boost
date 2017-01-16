cd test/
zpm install-package --allow-install --allow-module  || exit /b 1
zpm vs2015 --allow-install || exit /b 1

msbuild Boost.sln /property:Configuration=Test /property:Platform=Win32 || exit /b 1

.\bin\Test\Boost.exe || exit /b 1