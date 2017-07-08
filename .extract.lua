--[[ @cond ___LICENSE___
-- Copyright (c) 2017 Zefiros Software.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
-- THE SOFTWARE.
--
-- @endcond
--]]

local modules = {}
local function addModules( mods )

    if type(mods) ~= "table" then
        mods = {mods}
    end

    for _, mod in ipairs(mods) do
        if not table.contains( modules, mod ) then
            table.insert( modules, mod )
    
            zpm.extractdir( "libs/" .. mod )
        end
    end
end

tree = {
    Accumulators = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Algorithm = {'test', 'smart_ptr', 'system', 'regex', 'chrono', 'timer'},
    Array = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Asio = {'atomic', 'coroutine', 'smart_ptr', 'exception', 'date_time', 'system', 'regex', 'thread', 'chrono', 'serialization'},
    Assign = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Atomic = {'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono'},
    Bimap = {'test', 'smart_ptr', 'system', 'python', 'mpi', 'chrono', 'timer', 'serialization'},
    Bind = {'smart_ptr'},
    Chrono = {'chrono', 'smart_ptr', 'system'},
    CircularBuffer = {'test', 'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono', 'timer'},
    Compute = {'test', 'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'program_options', 'chrono', 'timer'},
    Config = {'system', 'filesystem', 'regex', 'smart_ptr'},
    Container = {'chrono', 'timer', 'smart_ptr', 'system', 'container'},
    Context = {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'timer', 'thread', 'program_options', 'chrono', 'context'},
    Conversion = {'smart_ptr'},
    Convert = {'chrono', 'timer', 'smart_ptr', 'system'},
    Coroutine = {'test', 'atomic', 'coroutine', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'random', 'program_options', 'chrono', 'timer'},
    Coroutine2 = {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'timer', 'thread', 'program_options', 'chrono', 'context'},
    Crc = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    DateTime = {'date_time', 'serialization', 'smart_ptr'},
    DisjointSets = {'test', 'smart_ptr', 'system', 'python', 'mpi', 'chrono', 'timer', 'serialization'},
    Dll = {'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'chrono'},
    DynamicBitset = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Endian = {'chrono', 'timer', 'system'},
    Exception = {'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono'},
    Fiber = {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'timer', 'regex', 'fiber', 'thread', 'program_options', 'chrono', 'context'},
    Filesystem = {'test', 'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'regex', 'thread', 'chrono', 'timer'},
    Flyweight = {'date_time', 'serialization', 'smart_ptr'},
    Foreach = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Format = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Function = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Functional = {'smart_ptr'},
    Geometry = {'test', 'smart_ptr', 'date_time', 'python', 'system', 'mpi', 'program_options', 'chrono', 'timer', 'serialization'},
    Gil = {'smart_ptr'},
    Graph = {'test', 'atomic', 'filesystem', 'graph', 'smart_ptr', 'exception', 'date_time', 'python', 'system', 'mpi', 'regex', 'thread', 'chrono', 'timer', 'serialization', 'graph_parallel'},
    GraphParallel = {'test', 'atomic', 'filesystem', 'graph', 'smart_ptr', 'exception', 'date_time', 'python', 'system', 'mpi', 'regex', 'thread', 'chrono', 'timer', 'serialization', 'graph_parallel'},
    Heap = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Icl = {'test', 'smart_ptr', 'system', 'date_time', 'chrono', 'timer'},
    Interprocess = {'date_time', 'smart_ptr'},
    Intrusive = {'date_time', 'smart_ptr'},
    Io = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Iostreams = {'test', 'filesystem', 'smart_ptr', 'system', 'regex', 'iostreams', 'chrono', 'timer'},
    Iterator = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Lambda = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    LexicalCast = {'test', 'filesystem', 'smart_ptr', 'system', 'date_time', 'chrono', 'timer'},
    Locale = {'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'locale', 'chrono'},
    LocalFunction = {'chrono', 'system'},
    Lockfree = {'test', 'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono', 'timer'},
    Log = {'test', 'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'timer', 'regex', 'thread', 'locale', 'chrono', 'log'},
    Logic = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Math = {'test', 'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'serialization', 'regex', 'thread', 'program_options', 'chrono', 'timer', 'math'},
    Metaparse = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Move = {'chrono', 'timer', 'system'},
    Mpi = {'test', 'atomic', 'graph', 'smart_ptr', 'exception', 'date_time', 'python', 'system', 'mpi', 'regex', 'thread', 'chrono', 'timer', 'serialization'},
    Mpl = {'smart_ptr'},
    Msm = {'test', 'smart_ptr', 'system', 'chrono', 'timer', 'serialization'},
    Multiprecision = {'test', 'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'serialization', 'regex', 'thread', 'chrono', 'timer', 'math'},
    MultiArray = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    MultiIndex = {'date_time', 'serialization', 'smart_ptr'},
    Numeric = {'test', 'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'python', 'system', 'mpi', 'thread', 'chrono', 'timer', 'serialization'},
    Parameter = {'python', 'serialization', 'mpi', 'smart_ptr'},
    Phoenix = {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'regex', 'thread', 'chrono', 'timer'},
    Polygon = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Pool = {'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'chrono', 'serialization'},
    ProgramOptions = {'smart_ptr', 'regex', 'program_options'},
    PropertyMap = {'test', 'smart_ptr', 'system', 'python', 'mpi', 'chrono', 'timer', 'serialization'},
    PropertyTree = {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'chrono', 'timer', 'serialization'},
    Proto = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    PtrContainer = {'test', 'smart_ptr', 'system', 'chrono', 'timer', 'serialization'},
    Python = {'python', 'serialization', 'mpi', 'smart_ptr'},
    Qvm = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Random = {'test', 'atomic', 'smart_ptr', 'system', 'regex', 'random', 'chrono', 'timer'},
    Range = {'test', 'smart_ptr', 'system', 'regex', 'chrono', 'timer'},
    Rational = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Regex = {'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'regex', 'thread', 'program_options', 'chrono'},
    Serialization = {'system', 'serialization', 'filesystem', 'smart_ptr'},
    Signals = {'test', 'smart_ptr', 'system', 'python', 'mpi', 'chrono', 'timer', 'serialization', 'signals'},
    Signals2 = {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'chrono', 'timer', 'signals'},
    SmartPtr = {'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono'},
    Sort = {'test', 'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono', 'timer'},
    Spirit = {'atomic', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'regex', 'thread', 'chrono'},
    Statechart = {'test', 'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono', 'timer'},
    System = {'system'},
    Test = {'test', 'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'thread', 'chrono', 'timer'},
    Thread = {'test', 'atomic', 'smart_ptr', 'exception', 'date_time', 'system', 'regex', 'thread', 'chrono', 'timer'},
    Timer = {'chrono', 'timer', 'system'},
    Tokenizer = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Tr1 = {'test', 'atomic', 'smart_ptr', 'system', 'regex', 'random', 'program_options', 'chrono', 'timer'},
    Tuple = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    TypeErasure = {'test', 'atomic', 'smart_ptr', 'exception', 'system', 'date_time', 'type_erasure', 'thread', 'chrono', 'timer'},
    TypeTraits = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Units = {'test', 'filesystem', 'smart_ptr', 'system', 'regex', 'chrono', 'timer'},
    Utility = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Uuid = {'test', 'smart_ptr', 'system', 'random', 'chrono', 'timer', 'serialization'},
    Variant = {'chrono', 'test', 'smart_ptr', 'system', 'timer'},
    Wave = {'atomic', 'wave', 'filesystem', 'smart_ptr', 'exception', 'date_time', 'system', 'thread', 'program_options', 'chrono', 'serialization'},
    Xpressive = {'test', 'smart_ptr', 'system', 'regex', 'chrono', 'timer'}
}

if os.ishost( "windows" ) then
    if not os.isfile( "b2.exe" ) then
        os.execute( "bootstrap.bat" )
    end
    
    os.execute( "b2.exe -j 8 headers" )
else
    if not os.isfile("b2") then
        os.execute( "bash bootstrap.sh" )
    end
    
    os.execute("b2 -j 8 headers")
end

for type, mods in pairs(tree) do
    if zpm.setting(type) then
        addModules(mods)
    end
end

zpm.extractdir( "boost", "include/" )
