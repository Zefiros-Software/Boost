
local modules = {}
local hasFiles = false

function addModules( mods )

    if type(mods) ~= "table" then
        mods = {mods}
    end

    for _, mod in ipairs(mods) do
        if table.contains( modules, mod ) == false then
            modules.insert( mod )

            zpm.submodules( "libs/" .. mod )
            zpm.export( "includedirs \"libs/" .. mod .. "/include/\"" )

            if os.isdir( "libs/" .. mod .. "/src/" ) then

                hasFiles = true
                files( "libs/" .. mod .. "/src/**.cpp" )
            end
        end
    end
end

project( "Boost" )

    if zpm.option("Accumulators") then
        addModules( {'random', 'concept', 'timer', 'typeof', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'serialization', 'parameter', 'range', 'numeric', 'move', 'circular_buffer', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'pending', 'algorithm', 'container', 'config', 'accumulators', 'fusion', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Algorithm") then
        addModules( {'concept', 'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'regex', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'intrusive', 'algorithm', 'container', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Align") then
        addModules( {'core', 'align', 'exception', 'config', 'detail'} )
    end

    if zpm.option("Any") then
        addModules( {'exception', 'preprocessor', 'type_traits', 'config', 'detail', 'mpl', 'utility', 'core', 'move', 'type_index'} )
    end

    if zpm.option("Array") then
        addModules( {'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'functional', 'utility', 'integer', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Asio") then
        addModules( {'concept', 'optional', 'system', 'archive', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'serialization', 'range', 'lambda', 'asio', 'numeric', 'lexical_cast', 'move', 'spirit', 'context', 'preprocessor', 'chrono', 'regex', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'logic', 'core', 'atomic', 'date_time', 'iterator', 'coroutine'} )
    end

    if zpm.option("Assert") then
        addModules( {'core', 'config', 'detail'} )
    end

    if zpm.option("Assign") then
        addModules( {'concept', 'timer', 'optional', 'ptr_container', 'archive', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'multi_index', 'serialization', 'range', 'numeric', 'move', 'circular_buffer', 'preprocessor', 'chrono', 'assign', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'intrusive', 'algorithm', 'container', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Atomic") then
        addModules( {'concept', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator'} )
    end

    if zpm.option("Bimap") then
        addModules( {'property_map', 'concept', 'dynamic_bitset', 'timer', 'typeof', 'optional', 'archive', 'detail', 'ratio', 'mpi', 'exception', 'graph', 'type_traits', 'io', 'predef', 'multi_index', 'parameter', 'function_types', 'range', 'lambda', 'serialization', 'numeric', 'lexical_cast', 'move', 'spirit', 'iterator', 'preprocessor', 'chrono', 'assign', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'xpressive', 'math', 'intrusive', 'pending', 'algorithm', 'proto', 'container', 'align', 'config', 'fusion', 'python', 'core', 'system', 'bind', 'test', 'bimap'} )
    end

    if zpm.option("Bind") then
        addModules( {'exception', 'preprocessor', 'type_traits', 'predef', 'function', 'config', 'detail', 'smart_ptr', 'mpl', 'utility', 'core', 'move', 'bind'} )
    end

    if zpm.option("Chrono") then
        addModules( {'concept', 'typeof', 'optional', 'detail', 'ratio', 'exception', 'type_traits', 'format', 'predef', 'parameter', 'move', 'preprocessor', 'chrono', 'smart_ptr', 'mpl', 'utility', 'integer', 'config', 'accumulators', 'fusion', 'core', 'system'} )
    end

    if zpm.option("CircularBuffer") then
        addModules( {'concept', 'timer', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'circular_buffer', 'lexical_cast', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator', 'test'} )
    end

    if zpm.option("Compatibility") then
        addModules( {'compatibility'} )
    end

    if zpm.option("Compute") then
        addModules( {'random', 'property_tree', 'concept', 'timer', 'typeof', 'optional', 'system', 'archive', 'detail', 'ratio', 'exception', 'type_traits', 'io', 'format', 'predef', 'multi_index', 'serialization', 'function_types', 'range', 'iostreams', 'program_options', 'numeric', 'lexical_cast', 'move', 'spirit', 'uuid', 'type_index', 'iterator', 'preprocessor', 'chrono', 'regex', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'variant', 'pending', 'algorithm', 'proto', 'compute', 'container', 'align', 'filesystem', 'config', 'fusion', 'phoenix', 'core', 'atomic', 'date_time', 'bind', 'test'} )
    end

    if zpm.option("ConceptCheck") then
        addModules( {'concept', 'preprocessor', 'type_traits', 'config', 'detail', 'mpl', 'concept_check'} )
    end

    if zpm.option("Config") then
        addModules( {'tr1', 'exception', 'preprocessor', 'type_traits', 'regex', 'io', 'filesystem', 'predef', 'system', 'config', 'detail', 'range', 'smart_ptr', 'mpl', 'core', 'functional', 'utility', 'iterator', 'integer'} )
    end

    if zpm.option("Container") then
        addModules( {'intrusive', 'exception', 'concept', 'preprocessor', 'timer', 'chrono', 'type_traits', 'io', 'container', 'predef', 'system', 'detail', 'config', 'ratio', 'smart_ptr', 'mpl', 'utility', 'core', 'functional', 'move', 'integer'} )
    end

    if zpm.option("Context") then
        addModules( {'concept', 'timer', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'pool', 'type_traits', 'io', 'predef', 'range', 'program_options', 'numeric', 'move', 'lexical_cast', 'context', 'type_index', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'variant', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator', 'test'} )
    end

    if zpm.option("Conversion") then
        addModules( {'exception', 'typeof', 'preprocessor', 'type_traits', 'predef', 'config', 'detail', 'smart_ptr', 'mpl', 'core', 'utility'} )
    end

    if zpm.option("Convert") then
        addModules( {'random', 'concept', 'timer', 'typeof', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'convert', 'format', 'io', 'predef', 'parameter', 'function_types', 'range', 'iostreams', 'numeric', 'move', 'lexical_cast', 'spirit', 'type_index', 'preprocessor', 'chrono', 'regex', 'function', 'smart_ptr', 'mpl', 'functional', 'utility', 'integer', 'math', 'variant', 'pending', 'proto', 'container', 'config', 'fusion', 'phoenix', 'core', 'system', 'iterator'} )
    end

    if zpm.option("Core") then
        addModules( {'preprocessor', 'type_traits', 'config', 'detail', 'mpl', 'core', 'utility'} )
    end

    if zpm.option("Coroutine") then
        addModules( {'random', 'concept', 'timer', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'program_options', 'numeric', 'lexical_cast', 'move', 'context', 'type_index', 'preprocessor', 'chrono', 'assign', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator', 'test', 'coroutine'} )
    end

    if zpm.option("Coroutine2") then
        addModules( {'concept', 'timer', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'pool', 'type_traits', 'io', 'predef', 'range', 'program_options', 'numeric', 'lexical_cast', 'move', 'context', 'type_index', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'coroutine2', 'core', 'atomic', 'date_time', 'iterator', 'test'} )
    end

    if zpm.option("Crc") then
        addModules( {'random', 'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'utility', 'integer', 'pending', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("DateTime") then
        addModules( {'concept', 'optional', 'archive', 'detail', 'bind', 'exception', 'type_traits', 'io', 'predef', 'serialization', 'range', 'numeric', 'move', 'lexical_cast', 'spirit', 'preprocessor', 'function', 'smart_ptr', 'mpl', 'functional', 'utility', 'math', 'algorithm', 'container', 'align', 'config', 'core', 'date_time', 'iterator'} )
    end

    if zpm.option("Detail") then
        addModules( {'exception', 'concept', 'preprocessor', 'type_traits', 'predef', 'config', 'detail', 'range', 'smart_ptr', 'mpl', 'core', 'functional', 'utility', 'iterator'} )
    end

    if zpm.option("DisjointSets") then
        addModules( {'property_map', 'concept', 'dynamic_bitset', 'timer', 'typeof', 'optional', 'archive', 'detail', 'ratio', 'bind', 'mpi', 'exception', 'graph', 'type_traits', 'io', 'predef', 'multi_index', 'parameter', 'serialization', 'range', 'numeric', 'move', 'lexical_cast', 'spirit', 'preprocessor', 'chrono', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'pending', 'algorithm', 'container', 'align', 'config', 'python', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Dll") then
        addModules( {'concept', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'dll', 'type_traits', 'io', 'predef', 'function_types', 'range', 'tti', 'numeric', 'lexical_cast', 'move', 'spirit', 'type_index', 'preprocessor', 'chrono', 'regex', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'variant', 'algorithm', 'container', 'align', 'filesystem', 'config', 'fusion', 'core', 'atomic', 'date_time', 'iterator'} )
    end

    if zpm.option("DynamicBitset") then
        addModules( {'dynamic_bitset', 'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'utility', 'integer', 'pending', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Endian") then
        addModules( {'random', 'concept', 'timer', 'detail', 'ratio', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'chrono', 'mpl', 'functional', 'utility', 'integer', 'math', 'pending', 'container', 'config', 'endian', 'core', 'system', 'iterator'} )
    end

    if zpm.option("Exception") then
        addModules( {'concept', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator'} )
    end

    if zpm.option("Filesystem") then
        addModules( {'concept', 'timer', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'chrono', 'regex', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'filesystem', 'config', 'core', 'atomic', 'date_time', 'iterator', 'test'} )
    end

    if zpm.option("Flyweight") then
        addModules( {'concept', 'optional', 'archive', 'detail', 'bind', 'exception', 'type_traits', 'io', 'predef', 'multi_index', 'parameter', 'serialization', 'interprocess', 'range', 'numeric', 'move', 'lexical_cast', 'spirit', 'type_index', 'preprocessor', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'flyweight', 'integer', 'utility', 'math', 'intrusive', 'variant', 'container', 'align', 'config', 'core', 'date_time', 'iterator'} )
    end

    if zpm.option("Foreach") then
        addModules( {'concept', 'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'utility', 'integer', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Format") then
        addModules( {'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'format', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'utility', 'integer', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Function") then
        addModules( {'typeof', 'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'lambda', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'tuple', 'utility', 'integer', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Functional") then
        addModules( {'typeof', 'detail', 'bind', 'exception', 'type_traits', 'predef', 'function_types', 'move', 'preprocessor', 'unordered', 'function', 'smart_ptr', 'mpl', 'tuple', 'utility', 'functional', 'integer', 'intrusive', 'container', 'config', 'core', 'iterator'} )
    end

    if zpm.option("FunctionTypes") then
        addModules( {'concept', 'detail', 'bind', 'exception', 'type_traits', 'predef', 'function_types', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'function', 'mpl', 'functional', 'utility', 'math', 'container', 'config', 'fusion', 'core', 'iterator'} )
    end

    if zpm.option("Fusion") then
        addModules( {'concept', 'typeof', 'detail', 'exception', 'type_traits', 'predef', 'function_types', 'range', 'lambda', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'mpl', 'tuple', 'functional', 'utility', 'integer', 'math', 'container', 'config', 'fusion', 'core', 'iterator'} )
    end

    if zpm.option("Geometry") then
        addModules( {'property_map', 'random', 'concept', 'dynamic_bitset', 'timer', 'typeof', 'geometry', 'optional', 'ptr_container', 'archive', 'detail', 'ratio', 'mpi', 'exception', 'graph', 'polygon', 'type_traits', 'io', 'format', 'predef', 'multi_index', 'parameter', 'function_types', 'interprocess', 'range', 'serialization', 'program_options', 'numeric', 'lexical_cast', 'move', 'spirit', 'multiprecision', 'type_index', 'iterator', 'preprocessor', 'chrono', 'assign', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'variant', 'pending', 'algorithm', 'container', 'align', 'config', 'fusion', 'python', 'core', 'date_time', 'system', 'bind', 'test'} )
    end

    if zpm.option("Gil") then
        addModules( {'iterator', 'exception', 'concept', 'preprocessor', 'type_traits', 'predef', 'config', 'detail', 'smart_ptr', 'lambda', 'mpl', 'core', 'tuple', 'utility', 'bind', 'gil'} )
    end

    if zpm.option("Graph") then
        addModules( {'property_map', 'random', 'property_tree', 'concept', 'dynamic_bitset', 'timer', 'typeof', 'optional', 'system', 'archive', 'detail', 'ratio', 'mpi', 'exception', 'graph', 'type_traits', 'io', 'format', 'predef', 'multi_index', 'parameter', 'function_types', 'range', 'serialization', 'tti', 'numeric', 'lexical_cast', 'move', 'spirit', 'type_index', 'iterator', 'preprocessor', 'chrono', 'regex', 'assign', 'unordered', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'xpressive', 'math', 'intrusive', 'variant', 'pending', 'algorithm', 'proto', 'container', 'align', 'filesystem', 'config', 'fusion', 'python', 'core', 'atomic', 'date_time', 'bind', 'test', 'bimap'} )
    end

    if zpm.option("GraphParallel") then
        addModules( {'property_map', 'random', 'property_tree', 'concept', 'dynamic_bitset', 'timer', 'typeof', 'optional', 'system', 'archive', 'detail', 'ratio', 'mpi', 'exception', 'graph', 'type_traits', 'io', 'predef', 'multi_index', 'parameter', 'function_types', 'range', 'serialization', 'tti', 'numeric', 'lexical_cast', 'move', 'spirit', 'type_index', 'iterator', 'preprocessor', 'chrono', 'regex', 'unordered', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'xpressive', 'math', 'intrusive', 'variant', 'pending', 'algorithm', 'proto', 'container', 'align', 'filesystem', 'config', 'fusion', 'python', 'core', 'atomic', 'date_time', 'bind', 'test'} )
    end

    if zpm.option("Hana") then
        addModules( {'exception', 'typeof', 'preprocessor', 'type_traits', 'predef', 'config', 'function_types', 'detail', 'fusion', 'mpl', 'core', 'hana', 'tuple', 'utility', 'type_index'} )
    end

    if zpm.option("Heap") then
        addModules( {'random', 'concept', 'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'parameter', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'heap', 'function', 'smart_ptr', 'mpl', 'functional', 'utility', 'integer', 'math', 'intrusive', 'pending', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Icl") then
        addModules( {'concept', 'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'interprocess', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'icl', 'mpl', 'functional', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'config', 'core', 'date_time', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Index.html") then
        addModules( set() )
    end

    if zpm.option("Integer") then
        addModules( {'type_traits', 'config', 'detail', 'mpl', 'core', 'integer'} )
    end

    if zpm.option("Interprocess") then
        addModules( {'concept', 'archive', 'detail', 'bind', 'exception', 'type_traits', 'predef', 'multi_index', 'serialization', 'interprocess', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'unordered', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'container', 'config', 'core', 'date_time', 'iterator'} )
    end

    if zpm.option("Intrusive") then
        addModules( {'concept', 'detail', 'exception', 'type_traits', 'io', 'predef', 'interprocess', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'unordered', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'config', 'date_time', 'core', 'iterator'} )
    end

    if zpm.option("Io") then
        addModules( {'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'utility', 'integer', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Iostreams") then
        addModules( {'random', 'concept', 'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'iostreams', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'chrono', 'regex', 'function', 'smart_ptr', 'mpl', 'functional', 'utility', 'integer', 'math', 'pending', 'algorithm', 'container', 'filesystem', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Iterator") then
        addModules( {'concept', 'timer', 'typeof', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'function_types', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'assign', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'pending', 'algorithm', 'config', 'fusion', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Jamfile.v2") then
        addModules( set() )
    end

    if zpm.option("Lambda") then
        addModules( {'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'lambda', 'numeric', 'move', 'type_index', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'tuple', 'utility', 'integer', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("LexicalCast") then
        addModules( {'concept', 'timer', 'typeof', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'lexical_cast', 'type_index', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'variant', 'algorithm', 'container', 'filesystem', 'config', 'fusion', 'core', 'date_time', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Libraries.htm") then
        addModules( set() )
    end

    if zpm.option("Locale") then
        addModules( {'concept', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'chrono', 'unordered', 'function', 'smart_ptr', 'mpl', 'thread', 'locale', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator'} )
    end

    if zpm.option("LocalFunction") then
        addModules( {'concept', 'typeof', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'predef', 'function_types', 'range', 'spirit', 'move', 'preprocessor', 'chrono', 'function', 'mpl', 'functional', 'utility', 'integer', 'local_function', 'proto', 'config', 'fusion', 'phoenix', 'core', 'system', 'iterator'} )
    end

    if zpm.option("Lockfree") then
        addModules( {'concept', 'timer', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'parameter', 'interprocess', 'range', 'numeric', 'lexical_cast', 'move', 'preprocessor', 'chrono', 'unordered', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'lockfree', 'core', 'atomic', 'date_time', 'iterator', 'test'} )
    end

    if zpm.option("Log") then
        addModules( {'random', 'property_tree', 'concept', 'timer', 'typeof', 'optional', 'system', 'archive', 'detail', 'ratio', 'exception', 'type_traits', 'io', 'format', 'predef', 'multi_index', 'parameter', 'function_types', 'range', 'lambda', 'serialization', 'asio', 'numeric', 'lexical_cast', 'move', 'spirit', 'type_index', 'iterator', 'preprocessor', 'chrono', 'regex', 'unordered', 'function', 'smart_ptr', 'mpl', 'thread', 'locale', 'functional', 'tuple', 'utility', 'integer', 'xpressive', 'math', 'test', 'intrusive', 'variant', 'pending', 'algorithm', 'proto', 'container', 'align', 'filesystem', 'config', 'fusion', 'phoenix', 'core', 'atomic', 'date_time', 'bind', 'log'} )
    end

    if zpm.option("Logic") then
        addModules( {'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'utility', 'integer', 'algorithm', 'config', 'logic', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Maintainers.txt") then
        addModules( set() )
    end

    if zpm.option("Math") then
        addModules( {'random', 'concept', 'timer', 'typeof', 'optional', 'system', 'archive', 'detail', 'ratio', 'exception', 'type_traits', 'io', 'format', 'predef', 'serialization', 'interprocess', 'lambda', 'range', 'program_options', 'numeric', 'lexical_cast', 'move', 'spirit', 'multiprecision', 'type_index', 'iterator', 'preprocessor', 'chrono', 'regex', 'unordered', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'pending', 'algorithm', 'container', 'align', 'filesystem', 'config', 'fusion', 'core', 'atomic', 'date_time', 'bind', 'test'} )
    end

    if zpm.option("Metaparse") then
        addModules( {'concept', 'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'metaparse', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'utility', 'integer', 'xpressive', 'algorithm', 'proto', 'config', 'fusion', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Move") then
        addModules( {'intrusive', 'exception', 'preprocessor', 'timer', 'chrono', 'type_traits', 'io', 'container', 'predef', 'detail', 'config', 'ratio', 'mpl', 'utility', 'core', 'system', 'move', 'integer'} )
    end

    if zpm.option("Mpi") then
        addModules( {'property_map', 'random', 'property_tree', 'concept', 'dynamic_bitset', 'timer', 'typeof', 'optional', 'system', 'archive', 'detail', 'ratio', 'mpi', 'exception', 'graph', 'type_traits', 'io', 'predef', 'multi_index', 'parameter', 'function_types', 'range', 'serialization', 'tti', 'numeric', 'lexical_cast', 'move', 'spirit', 'type_index', 'iterator', 'preprocessor', 'chrono', 'regex', 'unordered', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'xpressive', 'math', 'intrusive', 'pending', 'algorithm', 'proto', 'container', 'align', 'config', 'fusion', 'python', 'core', 'atomic', 'date_time', 'bind', 'test'} )
    end

    if zpm.option("Mpl") then
        addModules( {'exception', 'preprocessor', 'type_traits', 'predef', 'config', 'detail', 'smart_ptr', 'mpl', 'core', 'tuple', 'utility', 'bind'} )
    end

    if zpm.option("Msm") then
        addModules( {'concept', 'timer', 'typeof', 'optional', 'archive', 'detail', 'ratio', 'statechart', 'bind', 'exception', 'type_traits', 'io', 'predef', 'serialization', 'parameter', 'range', 'numeric', 'move', 'circular_buffer', 'spirit', 'type_index', 'msm', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'intrusive', 'algorithm', 'proto', 'container', 'align', 'config', 'fusion', 'phoenix', 'core', 'system', 'iterator', 'test', 'type_erasure'} )
    end

    if zpm.option("Multiprecision") then
        addModules( {'random', 'concept', 'timer', 'typeof', 'optional', 'system', 'archive', 'detail', 'ratio', 'bind', 'exception', 'polygon', 'type_traits', 'io', 'format', 'predef', 'serialization', 'range', 'numeric', 'lexical_cast', 'move', 'spirit', 'multiprecision', 'preprocessor', 'chrono', 'regex', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'pending', 'algorithm', 'container', 'align', 'filesystem', 'config', 'fusion', 'core', 'atomic', 'date_time', 'iterator', 'test'} )
    end

    if zpm.option("MultiArray") then
        addModules( {'concept', 'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'functional', 'utility', 'integer', 'multi_array', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("MultiIndex") then
        addModules( {'random', 'concept', 'optional', 'archive', 'detail', 'bind', 'exception', 'type_traits', 'io', 'predef', 'multi_index', 'serialization', 'interprocess', 'range', 'numeric', 'move', 'lexical_cast', 'spirit', 'preprocessor', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'pending', 'container', 'align', 'config', 'core', 'date_time', 'iterator'} )
    end

    if zpm.option("Numeric") then
        addModules( {'property_map', 'random', 'property_tree', 'concept', 'dynamic_bitset', 'timer', 'typeof', 'optional', 'system', 'archive', 'detail', 'ratio', 'mpi', 'exception', 'graph', 'type_traits', 'io', 'format', 'predef', 'multi_index', 'parameter', 'function_types', 'range', 'serialization', 'numeric', 'lexical_cast', 'move', 'spirit', 'uuid', 'multiprecision', 'type_index', 'iterator', 'preprocessor', 'chrono', 'unordered', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'multi_array', 'algorithm', 'pending', 'proto', 'compute', 'container', 'align', 'filesystem', 'config', 'fusion', 'logic', 'phoenix', 'python', 'core', 'atomic', 'date_time', 'units', 'bind', 'test'} )
    end

    if zpm.option("Optional") then
        addModules( {'exception', 'preprocessor', 'type_traits', 'optional', 'config', 'detail', 'mpl', 'utility', 'core', 'tuple', 'move', 'bind'} )
    end

    if zpm.option("Parameter") then
        addModules( {'property_map', 'concept', 'dynamic_bitset', 'typeof', 'optional', 'archive', 'detail', 'bind', 'mpi', 'exception', 'graph', 'type_traits', 'io', 'predef', 'multi_index', 'parameter', 'function_types', 'range', 'serialization', 'tti', 'numeric', 'move', 'lexical_cast', 'spirit', 'preprocessor', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'pending', 'container', 'align', 'config', 'python', 'core', 'iterator'} )
    end

    if zpm.option("Phoenix") then
        addModules( {'concept', 'timer', 'typeof', 'optional', 'system', 'detail', 'ratio', 'exception', 'type_traits', 'io', 'predef', 'multi_index', 'parameter', 'function_types', 'range', 'lambda', 'iostreams', 'asio', 'numeric', 'lexical_cast', 'move', 'spirit', 'type_index', 'iterator', 'preprocessor', 'chrono', 'regex', 'assign', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'signals2', 'test', 'intrusive', 'variant', 'algorithm', 'proto', 'container', 'align', 'filesystem', 'config', 'fusion', 'phoenix', 'core', 'atomic', 'date_time', 'bind', 'log'} )
    end

    if zpm.option("PlatformMaintainers.txt") then
        addModules( set() )
    end

    if zpm.option("Polygon") then
        addModules( {'random', 'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'polygon', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'utility', 'integer', 'pending', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Pool") then
        addModules( {'random', 'concept', 'optional', 'system', 'archive', 'detail', 'ratio', 'bind', 'exception', 'pool', 'type_traits', 'io', 'predef', 'serialization', 'range', 'numeric', 'move', 'lexical_cast', 'spirit', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'pending', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator'} )
    end

    if zpm.option("Predef") then
        addModules( {'predef'} )
    end

    if zpm.option("Preprocessor") then
        addModules( {'preprocessor'} )
    end

    if zpm.option("ProgramOptions") then
        addModules( {'concept', 'detail', 'bind', 'exception', 'type_traits', 'predef', 'range', 'program_options', 'numeric', 'move', 'lexical_cast', 'type_index', 'preprocessor', 'regex', 'function', 'smart_ptr', 'mpl', 'functional', 'utility', 'integer', 'math', 'container', 'config', 'core', 'iterator'} )
    end

    if zpm.option("PropertyMap") then
        addModules( {'property_map', 'concept', 'dynamic_bitset', 'timer', 'typeof', 'optional', 'archive', 'detail', 'ratio', 'bind', 'mpi', 'exception', 'graph', 'type_traits', 'io', 'predef', 'multi_index', 'parameter', 'serialization', 'range', 'numeric', 'move', 'lexical_cast', 'spirit', 'type_index', 'preprocessor', 'chrono', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'pending', 'algorithm', 'container', 'align', 'config', 'python', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("PropertyTree") then
        addModules( {'property_tree', 'concept', 'timer', 'optional', 'system', 'archive', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'format', 'predef', 'multi_index', 'serialization', 'range', 'numeric', 'lexical_cast', 'move', 'spirit', 'type_index', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator', 'test'} )
    end

    if zpm.option("Proto") then
        addModules( {'concept', 'timer', 'typeof', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'utility', 'integer', 'algorithm', 'proto', 'config', 'fusion', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("PtrContainer") then
        addModules( {'concept', 'timer', 'optional', 'ptr_container', 'archive', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'serialization', 'range', 'lambda', 'numeric', 'lexical_cast', 'circular_buffer', 'move', 'spirit', 'preprocessor', 'chrono', 'assign', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'fusion', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Python") then
        addModules( {'property_map', 'concept', 'dynamic_bitset', 'typeof', 'optional', 'archive', 'detail', 'bind', 'mpi', 'exception', 'graph', 'type_traits', 'io', 'predef', 'multi_index', 'parameter', 'serialization', 'range', 'numeric', 'move', 'lexical_cast', 'spirit', 'preprocessor', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'pending', 'container', 'align', 'config', 'python', 'core', 'iterator'} )
    end

    if zpm.option("Random") then
        addModules( {'random', 'concept', 'timer', 'typeof', 'optional', 'archive', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'format', 'predef', 'multi_index', 'serialization', 'range', 'numeric', 'move', 'lexical_cast', 'multiprecision', 'preprocessor', 'chrono', 'regex', 'assign', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'pending', 'algorithm', 'container', 'config', 'fusion', 'core', 'atomic', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Range") then
        addModules( {'concept', 'timer', 'typeof', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'lambda', 'numeric', 'move', 'type_index', 'preprocessor', 'chrono', 'regex', 'assign', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'variant', 'algorithm', 'proto', 'container', 'config', 'fusion', 'phoenix', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Ratio") then
        addModules( {'exception', 'typeof', 'preprocessor', 'type_traits', 'config', 'detail', 'ratio', 'mpl', 'core', 'utility', 'integer'} )
    end

    if zpm.option("Rational") then
        addModules( {'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'utility', 'integer', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Regex") then
        addModules( {'concept', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'program_options', 'numeric', 'lexical_cast', 'move', 'type_index', 'preprocessor', 'chrono', 'regex', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'xpressive', 'math', 'intrusive', 'algorithm', 'proto', 'container', 'align', 'filesystem', 'config', 'fusion', 'core', 'atomic', 'date_time', 'iterator'} )
    end

    if zpm.option("ScopeExit") then
        addModules( {'iterator', 'exception', 'typeof', 'preprocessor', 'type_traits', 'function', 'config', 'detail', 'range', 'mpl', 'utility', 'core', 'move', 'bind', 'integer'} )
    end

    if zpm.option("Serialization") then
        addModules( {'random', 'compatibility', 'concept', 'optional', 'archive', 'detail', 'bind', 'exception', 'type_traits', 'io', 'format', 'predef', 'serialization', 'range', 'numeric', 'move', 'lexical_cast', 'spirit', 'uuid', 'type_index', 'preprocessor', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'variant', 'pending', 'container', 'align', 'filesystem', 'config', 'core', 'system', 'iterator'} )
    end

    if zpm.option("Signals") then
        addModules( {'property_map', 'random', 'concept', 'dynamic_bitset', 'timer', 'typeof', 'optional', 'archive', 'detail', 'ratio', 'signals', 'bind', 'mpi', 'exception', 'graph', 'type_traits', 'io', 'predef', 'multi_index', 'parameter', 'serialization', 'range', 'numeric', 'move', 'lexical_cast', 'spirit', 'type_index', 'preprocessor', 'chrono', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'pending', 'algorithm', 'container', 'align', 'config', 'python', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Signals2") then
        addModules( {'concept', 'timer', 'typeof', 'optional', 'system', 'detail', 'ratio', 'signals', 'bind', 'exception', 'type_traits', 'io', 'predef', 'multi_index', 'parameter', 'range', 'numeric', 'move', 'lexical_cast', 'type_index', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'signals2', 'intrusive', 'variant', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator', 'test'} )
    end

    if zpm.option("SmartPtr") then
        addModules( {'concept', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator'} )
    end

    if zpm.option("Sort") then
        addModules( {'random', 'sort', 'concept', 'timer', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'serialization', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'pending', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator', 'test'} )
    end

    if zpm.option("Spirit") then
        addModules( {'random', 'concept', 'dynamic_bitset', 'typeof', 'optional', 'system', 'archive', 'detail', 'ratio', 'exception', 'pool', 'type_traits', 'io', 'format', 'predef', 'serialization', 'function_types', 'range', 'lambda', 'tti', 'iostreams', 'numeric', 'lexical_cast', 'move', 'spirit', 'type_index', 'iterator', 'preprocessor', 'chrono', 'regex', 'assign', 'unordered', 'function', 'smart_ptr', 'mpl', 'thread', 'locale', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'variant', 'pending', 'algorithm', 'proto', 'container', 'align', 'filesystem', 'config', 'endian', 'fusion', 'phoenix', 'core', 'atomic', 'date_time', 'bind'} )
    end

    if zpm.option("Statechart") then
        addModules( {'concept', 'timer', 'optional', 'system', 'detail', 'ratio', 'statechart', 'bind', 'exception', 'pool', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator', 'test'} )
    end

    if zpm.option("StaticAssert") then
        addModules( {'utility', 'core', 'type_traits', 'config', 'detail'} )
    end

    if zpm.option("System") then
        addModules( {'predef', 'config', 'detail', 'core', 'system', 'utility'} )
    end

    if zpm.option("Test") then
        addModules( {'concept', 'timer', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'format', 'predef', 'range', 'numeric', 'move', 'lexical_cast', 'multiprecision', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator', 'test'} )
    end

    if zpm.option("Thread") then
        addModules( {'concept', 'timer', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'interprocess', 'range', 'asio', 'numeric', 'lexical_cast', 'move', 'preprocessor', 'chrono', 'regex', 'unordered', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'algorithm', 'container', 'align', 'config', 'core', 'atomic', 'date_time', 'iterator', 'test'} )
    end

    if zpm.option("ThrowException") then
        addModules( {'core', 'exception', 'config', 'detail'} )
    end

    if zpm.option("Timer") then
        addModules( {'exception', 'preprocessor', 'timer', 'chrono', 'type_traits', 'io', 'predef', 'config', 'detail', 'ratio', 'mpl', 'core', 'system', 'utility', 'integer'} )
    end

    if zpm.option("Tokenizer") then
        addModules( {'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'functional', 'utility', 'integer', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Tr1") then
        addModules( {'random', 'concept', 'timer', 'typeof', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'format', 'predef', 'range', 'program_options', 'numeric', 'move', 'lexical_cast', 'type_index', 'preprocessor', 'chrono', 'regex', 'unordered', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'tr1', 'pending', 'algorithm', 'container', 'config', 'fusion', 'core', 'atomic', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Tti") then
        addModules( {'preprocessor', 'type_traits', 'config', 'function_types', 'detail', 'tti', 'mpl', 'core'} )
    end

    if zpm.option("Tuple") then
        addModules( {'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'tuple', 'utility', 'integer', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Typeof") then
        addModules( {'typeof', 'preprocessor', 'type_traits', 'config', 'detail', 'mpl', 'core', 'utility'} )
    end

    if zpm.option("TypeErasure") then
        addModules( {'concept', 'timer', 'typeof', 'optional', 'system', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'lexical_cast', 'type_index', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'math', 'intrusive', 'variant', 'algorithm', 'proto', 'container', 'align', 'config', 'fusion', 'phoenix', 'core', 'atomic', 'date_time', 'iterator', 'test', 'type_erasure'} )
    end

    if zpm.option("TypeIndex") then
        addModules( {'concept', 'detail', 'exception', 'type_traits', 'predef', 'range', 'numeric', 'move', 'lexical_cast', 'type_index', 'preprocessor', 'unordered', 'mpl', 'tuple', 'functional', 'utility', 'integer', 'math', 'intrusive', 'container', 'config', 'core', 'iterator'} )
    end

    if zpm.option("TypeTraits") then
        addModules( {'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'utility', 'integer', 'algorithm', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Units") then
        addModules( {'concept', 'timer', 'typeof', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'format', 'predef', 'serialization', 'range', 'lambda', 'numeric', 'move', 'lexical_cast', 'multiprecision', 'preprocessor', 'chrono', 'regex', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'algorithm', 'container', 'filesystem', 'config', 'core', 'system', 'units', 'iterator', 'test'} )
    end

    if zpm.option("Unordered") then
        addModules( {'intrusive', 'exception', 'concept', 'algorithm', 'preprocessor', 'type_traits', 'unordered', 'container', 'predef', 'config', 'detail', 'range', 'mpl', 'tuple', 'utility', 'core', 'functional', 'move', 'iterator', 'integer'} )
    end

    if zpm.option("Utility") then
        addModules( {'random', 'concept', 'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'math', 'pending', 'algorithm', 'container', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Uuid") then
        addModules( {'random', 'concept', 'timer', 'optional', 'archive', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'serialization', 'range', 'numeric', 'move', 'lexical_cast', 'spirit', 'uuid', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'functional', 'utility', 'integer', 'math', 'pending', 'algorithm', 'container', 'align', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Variant") then
        addModules( {'concept', 'timer', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'range', 'numeric', 'move', 'lexical_cast', 'type_index', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'functional', 'utility', 'integer', 'math', 'variant', 'algorithm', 'container', 'config', 'core', 'system', 'iterator', 'test'} )
    end

    if zpm.option("Vmd") then
        addModules( {'preprocessor', 'predef', 'vmd', 'config', 'detail', 'core'} )
    end

    if zpm.option("Wave") then
        addModules( {'concept', 'optional', 'system', 'archive', 'detail', 'ratio', 'bind', 'exception', 'pool', 'type_traits', 'io', 'predef', 'multi_index', 'serialization', 'range', 'program_options', 'numeric', 'lexical_cast', 'move', 'spirit', 'type_index', 'preprocessor', 'chrono', 'function', 'smart_ptr', 'mpl', 'thread', 'functional', 'tuple', 'utility', 'integer', 'xpressive', 'math', 'intrusive', 'algorithm', 'proto', 'container', 'align', 'filesystem', 'wave', 'config', 'fusion', 'core', 'atomic', 'date_time', 'iterator'} )
    end

    if zpm.option("Winapi") then
        addModules( {'predef'} )
    end

    if zpm.option("Xpressive") then
        addModules( {'concept', 'timer', 'typeof', 'optional', 'detail', 'ratio', 'bind', 'exception', 'type_traits', 'io', 'predef', 'function_types', 'range', 'numeric', 'move', 'lexical_cast', 'preprocessor', 'chrono', 'regex', 'assign', 'function', 'smart_ptr', 'mpl', 'functional', 'tuple', 'utility', 'integer', 'xpressive', 'math', 'algorithm', 'proto', 'container', 'config', 'fusion', 'core', 'system', 'iterator', 'test'} )
    end

    warnings "Off"

    if hasFiles then
        kind "StaticLib"
    else
        kind "Utility"
    end

    zpm.export [[
        includedirs "include/"
        flags "C++14"
        defines "BOOST_ALL_NO_LIB"
    ]]