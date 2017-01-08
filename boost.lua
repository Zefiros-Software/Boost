
local oldPath = os.getcwd()
os.chdir( zpm.build._currentDependency.dependencyPath )

if os.is( "windows" ) then
    if os.isfile( "b2.exe" ) == false then
        os.execute( "bootstrap.bat" )
    end
    
    os.execute( "b2.exe -j 8 headers" )
else
    if os.isfile( path.join( zpm.build._currentDependency.dependencyPath, "b2" ) ) == false then
        os.execute( "bash bootstrap.sh" )
    end
    
    os.execute( path.join( zpm.build._currentDependency.dependencyPath, "b2 -j 8 headers" ) )
end

os.chdir( oldPath )

zpm.build.commands.extractdir( "boost", "include/" )
