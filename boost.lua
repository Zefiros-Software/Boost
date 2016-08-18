
if os.is( "windows" ) then
    os.execute( path.join( os.getcwd(), "bootstrap.bat" ) )
    os.execute( path.join( os.getcwd(), "b2 -j 8 headers" ) )
else
    os.execute( path.join( os.getcwd(), "bootstrap.sh" ) )
    os.execute( path.join( os.getcwd(), "b2 -j 8 headers") )
end