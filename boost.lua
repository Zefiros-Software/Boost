
if os.is( "windows" ) then
    print(path.join( zpm.build._currentDependency.dependencyPath, "bootstrap.bat" ) )
    os.execute( path.join( zpm.build._currentDependency.dependencyPath, "bootstrap.bat" ) )
    os.execute( path.join( zpm.build._currentDependency.dependencyPath, "b2.exe -j 8 headers" ) )
else
    os.execute( path.join( zpm.build._currentDependency.dependencyPath, "bootstrap.sh" ) )
    os.execute( path.join( zpm.build._currentDependency.dependencyPath, "b2 -j 8 headers") )
end