
local modules = {}

function addModules( mods )

    if type(mods) ~= "table" then
        mods = {mods}
    end

    for _, mod in mods do
        if table.contains( modules, mod ) == false then
            modules.insert( mod )

            zpm.submodules( mod )
            zpm.export [[
                includedirs "]] .. mod .. [["
            ]]
        end
    end

project( "Boost" )

    local usesCpp = false


    if zpm.option( "Accumulators" ) then

        addModules({"config",
                    "numeric",
                    "predef",
                    "concept",
                    "exception",
                    "chrono",
                    "functional",
                    "intrusive",
                    "utility",
                    "detail",
                    "container",
                    "iterator",
                    "bind",
                    "circular_buffer",
                    "range",
                    "math",
                    "timer",
                    "type_traits",
                    "move",
                    "function",
                    "preprocessor",
                    "parameter",
                    "system",
                    "smart_ptr",
                    "tuple",
                    "accumulators",
                    "serialization",
                    "fusion",
                    "typeof",
                    "algorithm",
                    "pending",
                    "random",
                    "integer",
                    "core",
                    "mpl",
                    "optional",
                    "ratio",
                    "test",
                    "io"})
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