
local oldPath = os.getcwd()
os.chdir( zpm.build._currentDependency.dependencyPath )

if os.is( "windows" ) then
    os.execute( "bootstrap.bat" )
    os.execute( "b2.exe -j 8 headers" )
else
    os.execute( "./bootstrap.sh" )
    os.execute( "./b2 -j 8 headers")
end

os.chdir( oldPath )