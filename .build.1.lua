local charset = {}

for i = 48,  57 do table.insert(charset, string.char(i)) end
for i = 65,  90 do table.insert(charset, string.char(i)) end
for i = 97, 122 do table.insert(charset, string.char(i)) end

local function random(length)
    if length > 0 then
        return random(length - 1) .. charset[math.random(1, #charset)]
    else
        return ""
    end
end

project( "Armadillo-" .. random( 3 ) )

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
        includedirs "include/boost/"
        flags "C++11"
        defines "BOOST_ALL_NO_LIB"
    ]]