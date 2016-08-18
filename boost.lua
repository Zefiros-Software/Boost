
local oldPath = os.getcwd()
os.chdir( zpm.build._currentDependency.dependencyPath )

if os.is( "windows" ) then
    os.execute( "bootstrap.bat" )
    os.execute( "b2.exe -j 8 headers" )
else
    os.execute( "bash bootstrap.sh" )
    os.execute( "ll" )
    os.execute( "chmod u+rx b2" )
    os.execute( "./b2 -j 8 headers")
end

os.chdir( oldPath )