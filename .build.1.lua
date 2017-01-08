
local modules = {}

project( "Boost" )

    warnings "Off"
    kind "StaticLib"

    files( "libs/*/src/**.cpp" )

    if os.is( "windows" ) then
        removefiles( "libs/*/src/pthread/**" )
    else
        removefiles( "libs/*/src/win32/**" )
    end

    removefiles("libs/*/src/tr1/**" )
    removefiles( "cpp_main.cpp" )

    zpm.export [[
        includedirs "include/"
        flags "C++11"
        defines {
            "BOOST_ALL_NO_LIB",
            "BOOST_TEST_NO_MAIN"
        }
    ]]
