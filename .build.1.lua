

project( "Boost" )

    local usesCpp = false


    if zpm.option( "Accumulators" ) then

        zpm.submodules {
            "libs/preprocessor",
            "libs/accumulators",
            "libs/config",
            "libs/mpl",
        }
        
        zpm.export [[
            includedirs {
                "libs/preprocessor/include/",
                "libs/accumulators/include/",
                "libs/config/include/",
                "libs/mpl/include/"
                }
        ]]
    end






    warnings "Off"

    if usesCpp then
        kind "StaticLib"
    else
        kind "Utility"
    end

    zpm.export [[
        includedirs "include/"
        flags "C++14"
        defines "BOOST_ALL_NO_LIB"
    ]]