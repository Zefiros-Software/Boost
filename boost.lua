
if os.is( "windows" ) then
    os.execute( "bootstrap" )
    os.executef( "b2 --prefix=%s -j 8 headers", zpm.build.getExportDir() )
else
    os.execute( "./bootstrap.sh" )
    os.executef( "./b2 --prefix=%s -j 8 headers", zpm.build.getExportDir() )
end