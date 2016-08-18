
if os.is( "windows" ) then
    os.execute( path.join( zpm.build._currentDependency.dependencyPath, "bootstrap.bat" ) )
    os.execute( path.join( zpm.build._currentDependency.dependencyPath, "b2 -j 8 headers" ) )
else
    os.execute( path.join( zpm.build._currentDependency.dependencyPath, "bootstrap.sh" ) )
    os.execute( path.join( zpm.build._currentDependency.dependencyPath, "b2 -j 8 headers") )
end