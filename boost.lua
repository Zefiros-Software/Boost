
if os.is( "windows" ) then
    os.execute( path.join( zpm.build._currentExportPath, "bootstrap.bat" ) )
    os.execute( path.join( zpm.build._currentExportPath, "b2 -j 8 headers" ) )
else
    os.execute( path.join( zpm.build._currentExportPath, "bootstrap.sh" ) )
    os.execute( path.join( zpm.build._currentExportPath, "b2 -j 8 headers") )
end