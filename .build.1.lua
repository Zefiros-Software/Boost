
local modules = {}
local hasFiles = false

function addModules( mods )

    if type(mods) ~= "table" then
        mods = {mods}
    end

    for _, mod in ipairs(mods) do
        if table.contains( modules, mod ) == false then
            table.insert( modules, mod )
            
            local dir = "libs/" .. mod .. "/src/"
            if os.isdir( dir ) then

                hasFiles = true
                files( "libs/" .. mod .. "/src/**.cpp" )

                if os.is( "windows" ) then
                    removefiles( path.join( dir, "pthread/**" ) )
                else
                    removefiles( path.join( dir, "win32/**" ) )
                end
                removefiles( path.join( dir, "tr1/**" ) )
                removefiles( "cpp_main.cpp" )
            end
        end
    end
end

project( "Boost" )

    if zpm.option("Accumulators") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Algorithm") then
        addModules( {'test', 'smart_ptr', 'system', 'regex', 'chrono', 'timer'} )
    end

    if zpm.option("Array") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Asio") then
        addModules( {'atomic', 'coroutine', 'smart_ptr', 'exception', 'date_time', 'system', 'regex', 'thread', 'chrono', 'serialization'} )
    end

    if zpm.option("Assign") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Atomic") then
        addModules( {'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono'} )
    end

    if zpm.option("Bimap") then
        addModules( {'test', 'smart_ptr', 'system', 'python', 'mpi', 'chrono', 'timer', 'serialization'} )
    end

    if zpm.option("Bind") then
        addModules( {'smart_ptr'} )
    end

    if zpm.option("Chrono") then
        addModules( {'chrono', 'smart_ptr', 'system'} )
    end

    if zpm.option("CircularBuffer") then
        addModules( {'test', 'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono', 'timer'} )
    end

    if zpm.option("Compute") then
        addModules( {'test', 'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'program_options', 'chrono', 'timer'} )
    end

    if zpm.option("Config") then
        addModules( {'system', 'filesystem', 'regex', 'smart_ptr'} )
    end

    if zpm.option("Container") then
        addModules( {'chrono', 'timer', 'smart_ptr', 'system', 'container'} )
    end

    if zpm.option("Context") then
        addModules( {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'timer', 'thread', 'program_options', 'chrono', 'context'} )
    end

    if zpm.option("Conversion") then
        addModules( {'smart_ptr'} )
    end

    if zpm.option("Convert") then
        addModules( {'chrono', 'timer', 'smart_ptr', 'system'} )
    end

    if zpm.option("Coroutine") then
        addModules( {'test', 'atomic', 'coroutine', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'random', 'program_options', 'chrono', 'timer'} )
    end

    if zpm.option("Coroutine2") then
        addModules( {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'timer', 'thread', 'program_options', 'chrono', 'context'} )
    end

    if zpm.option("Crc") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("DateTime") then
        addModules( {'date_time', 'serialization', 'smart_ptr'} )
    end

    if zpm.option("DisjointSets") then
        addModules( {'test', 'smart_ptr', 'system', 'python', 'mpi', 'chrono', 'timer', 'serialization'} )
    end

    if zpm.option("Dll") then
        addModules( {'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'chrono'} )
    end

    if zpm.option("DynamicBitset") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Endian") then
        addModules( {'chrono', 'timer', 'system'} )
    end

    if zpm.option("Exception") then
        addModules( {'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono'} )
    end

    if zpm.option("Fiber") then
        addModules( {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'timer', 'regex', 'fiber', 'thread', 'program_options', 'chrono', 'context'} )
    end

    if zpm.option("Filesystem") then
        addModules( {'test', 'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'regex', 'thread', 'chrono', 'timer'} )
    end

    if zpm.option("Flyweight") then
        addModules( {'date_time', 'serialization', 'smart_ptr'} )
    end

    if zpm.option("Foreach") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Format") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Function") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Functional") then
        addModules( {'smart_ptr'} )
    end

    if zpm.option("Geometry") then
        addModules( {'test', 'smart_ptr', 'date_time', 'python', 'system', 'mpi', 'program_options', 'chrono', 'timer', 'serialization'} )
    end

    if zpm.option("Gil") then
        addModules( {'smart_ptr'} )
    end

    if zpm.option("Graph") then
        addModules( {'test', 'atomic', 'filesystem', 'graph', 'smart_ptr', 'exception', 'date_time', 'python', 'system', 'mpi', 'regex', 'thread', 'chrono', 'timer', 'serialization', 'graph_parallel'} )
    end

    if zpm.option("GraphParallel") then
        addModules( {'test', 'atomic', 'filesystem', 'graph', 'smart_ptr', 'exception', 'date_time', 'python', 'system', 'mpi', 'regex', 'thread', 'chrono', 'timer', 'serialization', 'graph_parallel'} )
    end

    if zpm.option("Heap") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Icl") then
        addModules( {'test', 'smart_ptr', 'system', 'date_time', 'chrono', 'timer'} )
    end

    if zpm.option("Interprocess") then
        addModules( {'date_time', 'smart_ptr'} )
    end

    if zpm.option("Intrusive") then
        addModules( {'date_time', 'smart_ptr'} )
    end

    if zpm.option("Io") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Iostreams") then
        addModules( {'test', 'filesystem', 'smart_ptr', 'system', 'regex', 'iostreams', 'chrono', 'timer'} )
    end

    if zpm.option("Iterator") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Lambda") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("LexicalCast") then
        addModules( {'test', 'filesystem', 'smart_ptr', 'system', 'date_time', 'chrono', 'timer'} )
    end

    if zpm.option("Locale") then
        addModules( {'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'locale', 'chrono'} )
    end

    if zpm.option("LocalFunction") then
        addModules( {'chrono', 'system'} )
    end

    if zpm.option("Lockfree") then
        addModules( {'test', 'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono', 'timer'} )
    end

    if zpm.option("Log") then
        addModules( {'test', 'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'timer', 'regex', 'thread', 'locale', 'chrono', 'log'} )
    end

    if zpm.option("Logic") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Math") then
        addModules( {'test', 'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'serialization', 'regex', 'thread', 'program_options', 'chrono', 'timer', 'math'} )
    end

    if zpm.option("Metaparse") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Move") then
        addModules( {'chrono', 'timer', 'system'} )
    end

    if zpm.option("Mpi") then
        addModules( {'test', 'atomic', 'graph', 'smart_ptr', 'exception', 'date_time', 'python', 'system', 'mpi', 'regex', 'thread', 'chrono', 'timer', 'serialization'} )
    end

    if zpm.option("Mpl") then
        addModules( {'smart_ptr'} )
    end

    if zpm.option("Msm") then
        addModules( {'test', 'smart_ptr', 'system', 'chrono', 'timer', 'serialization'} )
    end

    if zpm.option("Multiprecision") then
        addModules( {'test', 'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'serialization', 'regex', 'thread', 'chrono', 'timer', 'math'} )
    end

    if zpm.option("MultiArray") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("MultiIndex") then
        addModules( {'date_time', 'serialization', 'smart_ptr'} )
    end

    if zpm.option("Numeric") then
        addModules( {'test', 'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'python', 'system', 'mpi', 'thread', 'chrono', 'timer', 'serialization'} )
    end

    if zpm.option("Parameter") then
        addModules( {'python', 'serialization', 'mpi', 'smart_ptr'} )
    end

    if zpm.option("Phoenix") then
        addModules( {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'regex', 'thread', 'chrono', 'timer'} )
    end

    if zpm.option("Polygon") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Pool") then
        addModules( {'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'chrono', 'serialization'} )
    end

    if zpm.option("ProgramOptions") then
        addModules( {'smart_ptr', 'regex', 'program_options'} )
    end

    if zpm.option("PropertyMap") then
        addModules( {'test', 'smart_ptr', 'system', 'python', 'mpi', 'chrono', 'timer', 'serialization'} )
    end

    if zpm.option("PropertyTree") then
        addModules( {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'chrono', 'timer', 'serialization'} )
    end

    if zpm.option("Proto") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("PtrContainer") then
        addModules( {'test', 'smart_ptr', 'system', 'chrono', 'timer', 'serialization'} )
    end

    if zpm.option("Python") then
        addModules( {'python', 'serialization', 'mpi', 'smart_ptr'} )
    end

    if zpm.option("Qvm") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Random") then
        addModules( {'test', 'atomic', 'smart_ptr', 'system', 'regex', 'random', 'chrono', 'timer'} )
    end

    if zpm.option("Range") then
        addModules( {'test', 'smart_ptr', 'system', 'regex', 'chrono', 'timer'} )
    end

    if zpm.option("Rational") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Regex") then
        addModules( {'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'regex', 'thread', 'program_options', 'chrono'} )
    end

    if zpm.option("Serialization") then
        addModules( {'system', 'serialization', 'filesystem', 'smart_ptr'} )
    end

    if zpm.option("Signals") then
        addModules( {'test', 'smart_ptr', 'system', 'python', 'mpi', 'chrono', 'timer', 'serialization', 'signals'} )
    end

    if zpm.option("Signals2") then
        addModules( {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'chrono', 'timer', 'signals'} )
    end

    if zpm.option("SmartPtr") then
        addModules( {'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono'} )
    end

    if zpm.option("Sort") then
        addModules( {'test', 'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono', 'timer'} )
    end

    if zpm.option("Spirit") then
        addModules( {'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'regex', 'thread', 'chrono'} )
    end

    if zpm.option("Statechart") then
        addModules( {'test', 'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono', 'timer'} )
    end

    if zpm.option("System") then
        addModules( {'system'} )
    end

    if zpm.option("Test") then
        addModules( {'test', 'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono', 'timer'} )
    end

    if zpm.option("Thread") then
        addModules( {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'regex', 'thread', 'chrono', 'timer'} )
    end

    if zpm.option("Timer") then
        addModules( {'chrono', 'timer', 'system'} )
    end

    if zpm.option("Tokenizer") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Tr1") then
        addModules( {'test', 'atomic', 'smart_ptr', 'system', 'regex', 'random', 'program_options', 'chrono', 'timer'} )
    end

    if zpm.option("Tuple") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("TypeErasure") then
        addModules( {'test', 'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'type_erasure', 'thread', 'chrono', 'timer'} )
    end

    if zpm.option("TypeTraits") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Units") then
        addModules( {'test', 'filesystem', 'smart_ptr', 'system', 'regex', 'chrono', 'timer'} )
    end

    if zpm.option("Utility") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Uuid") then
        addModules( {'test', 'smart_ptr', 'system', 'random', 'chrono', 'timer', 'serialization'} )
    end

    if zpm.option("Variant") then
        addModules( {'chrono', 'test', 'smart_ptr', 'system', 'timer'} )
    end

    if zpm.option("Wave") then
        addModules( {'atomic', 'wave', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'program_options', 'chrono', 'serialization'} )
    end

    if zpm.option("Xpressive") then
        addModules( {'test', 'smart_ptr', 'system', 'regex', 'chrono', 'timer'} )
    end

    warnings "Off"

    if hasFiles then
        kind "StaticLib"
    else
        kind "Utility"
    end

    zpm.export [[
        includedirs "include/"
        flags "C++11"
        defines {
            "BOOST_ALL_NO_LIB",
            "BOOST_TEST_NO_MAIN"
        }
    ]]
