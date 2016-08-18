
if os.is( "windows" ) then
    os.execute( ".\\bootstrap.bat" )
    os.execute( ".\\b2 -j 8 headers" )
else
    os.execute( "./bootstrap.sh" )
    os.execute( "./b2 -j 8 headers")
end