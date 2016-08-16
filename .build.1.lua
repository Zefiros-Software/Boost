

project( "Accumulators" )

    warnings "Off"
    if #os.matchfiles( "src/**.cpp" ) > 0 then

        kind "StaticLib"
        files {        
            "src/**.cpp" 
        }

    else

        kind "Utility"

    end

    zpm.export [[
        includedirs "include/"
        flags "C++14"
        defines "BOOST_ALL_NO_LIB"
    ]]