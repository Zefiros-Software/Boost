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
    Accumulators = {'system', 'chrono', 'timer', 'test'}
    Algorithm = {'system', 'test', 'chrono', 'timer', 'regex'}
    Array = {'system', 'chrono', 'timer', 'test'}
    Asio = {'system', 'thread', 'atomic', 'exception', 'chrono', 'date_time', 'coroutine', 'serialization', 'regex'}
    Assign = {'system', 'chrono', 'timer', 'test'}
    Atomic = {'system', 'thread', 'atomic', 'exception', 'chrono', 'date_time'}
    Bimap = {'mpi', 'system', 'test', 'chrono', 'python', 'timer', 'serialization'}
    Chrono = {'system', 'chrono'}
    CircularBuffer = {'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'timer', 'date_time'}
    Compute = {'system', 'thread', 'atomic', 'program_options', 'exception', 'test', 'chrono', 'timer', 'date_time', 'filesystem'}
    Config = {'regex', 'system', 'filesystem'}
    Container = {'system', 'chrono', 'container', 'timer'}
    Context = {'system', 'thread', 'atomic', 'program_options', 'exception', 'test', 'chrono', 'timer', 'date_time', 'context'}
    Convert = {'system', 'chrono', 'timer'}
    Coroutine = {'system', 'thread', 'atomic', 'program_options', 'exception', 'test', 'chrono', 'timer', 'date_time', 'coroutine', 'random'}
    Coroutine2 = {'system', 'thread', 'atomic', 'program_options', 'exception', 'test', 'chrono', 'timer', 'date_time', 'context'}
    Crc = {'system', 'chrono', 'timer', 'test'}
    DateTime = {'serialization', 'date_time'}
    DisjointSets = {'mpi', 'system', 'test', 'chrono', 'python', 'timer', 'serialization'}
    Dll = {'system', 'thread', 'atomic', 'exception', 'chrono', 'date_time', 'filesystem'}
    DynamicBitset = {'system', 'test', 'chrono', 'timer', 'serialization'}
    Endian = {'system', 'chrono', 'timer'}
    Exception = {'system', 'thread', 'atomic', 'exception', 'chrono', 'date_time'}
    Fiber = {'system', 'thread', 'atomic', 'fiber', 'exception', 'test', 'chrono', 'timer', 'date_time', 'context', 'regex'}
    Filesystem = {'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'timer', 'date_time', 'regex', 'filesystem'}
    Flyweight = {'serialization', 'date_time'}
    Foreach = {'system', 'chrono', 'timer', 'test'}
    Format = {'system', 'chrono', 'timer', 'test'}
    Function = {'system', 'chrono', 'timer', 'test'}
    Geometry = {'mpi', 'system', 'program_options', 'test', 'chrono', 'python', 'timer', 'date_time', 'serialization'}
    Graph = {'mpi', 'graph', 'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'python', 'timer', 'date_time', 'regex', 'graph_parallel', 'serialization', 'filesystem'}
    GraphParallel = {'mpi', 'graph', 'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'python', 'timer', 'date_time', 'regex', 'graph_parallel', 'serialization', 'filesystem'}
    Heap = {'system', 'chrono', 'timer', 'test'}
    Icl = {'system', 'test', 'chrono', 'timer', 'date_time'}
    Interprocess = {'date_time'}
    Intrusive = {'date_time'}
    Io = {'system', 'chrono', 'timer', 'test'}
    Iostreams = {'system', 'filesystem', 'iostreams', 'test', 'chrono', 'timer', 'regex'}
    Iterator = {'system', 'chrono', 'timer', 'test'}
    Lambda = {'system', 'chrono', 'timer', 'test'}
    LexicalCast = {'system', 'test', 'chrono', 'timer', 'date_time', 'filesystem'}
    Locale = {'system', 'thread', 'atomic', 'locale', 'exception', 'chrono', 'date_time'}
    LocalFunction = {'system', 'chrono'}
    Lockfree = {'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'timer', 'date_time'}
    Log = {'system', 'thread', 'atomic', 'locale', 'log', 'exception', 'test', 'chrono', 'timer', 'date_time', 'regex', 'filesystem'}
    Logic = {'system', 'chrono', 'timer', 'test'}
    Math = {'system', 'thread', 'atomic', 'program_options', 'exception', 'test', 'chrono', 'timer', 'date_time', 'regex', 'math', 'serialization', 'filesystem'}
    Metaparse = {'system', 'chrono', 'timer', 'test'}
    Move = {'system', 'chrono', 'timer'}
    Mpi = {'mpi', 'graph', 'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'python', 'timer', 'date_time', 'serialization', 'regex'}
    Msm = {'system', 'test', 'chrono', 'timer', 'serialization'}
    Multiprecision = {'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'timer', 'date_time', 'regex', 'math', 'serialization', 'filesystem'}
    MultiArray = {'system', 'chrono', 'timer', 'test'}
    MultiIndex = {'serialization', 'date_time'}
    Numeric = {'mpi', 'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'python', 'timer', 'date_time', 'serialization', 'filesystem'}
    Parameter = {'mpi', 'python', 'serialization'}
    Phoenix = {'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'timer', 'date_time', 'regex'}
    Polygon = {'system', 'chrono', 'timer', 'test'}
    Pool = {'system', 'thread', 'atomic', 'exception', 'chrono', 'date_time', 'serialization'}
    Process = {'system', 'thread', 'atomic', 'program_options', 'iostreams', 'exception', 'test', 'chrono', 'timer', 'date_time', 'coroutine', 'regex', 'filesystem'}
    ProgramOptions = {'program_options', 'regex'}
    PropertyMap = {'mpi', 'system', 'test', 'chrono', 'python', 'timer', 'serialization'}
    PropertyTree = {'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'timer', 'date_time', 'serialization'}
    Proto = {'system', 'chrono', 'timer', 'test'}
    PtrContainer = {'system', 'test', 'chrono', 'timer', 'serialization'}
    Python = {'mpi', 'python', 'serialization'}
    Qvm = {'system', 'chrono', 'timer', 'test'}
    Random = {'system', 'atomic', 'random', 'test', 'chrono', 'timer', 'regex'}
    Range = {'system', 'test', 'chrono', 'timer', 'regex'}
    Rational = {'system', 'chrono', 'timer', 'test'}
    Regex = {'system', 'thread', 'atomic', 'program_options', 'exception', 'chrono', 'date_time', 'regex', 'filesystem'}
    Serialization = {'system', 'serialization', 'filesystem'}
    Signals = {'mpi', 'system', 'signals', 'test', 'chrono', 'python', 'timer', 'serialization'}
    Signals2 = {'system', 'signals', 'thread', 'atomic', 'exception', 'test', 'chrono', 'timer', 'date_time'}
    SmartPtr = {'system', 'thread', 'atomic', 'exception', 'chrono', 'date_time'}
    Sort = {'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'timer', 'date_time'}
    Spirit = {'system', 'thread', 'atomic', 'exception', 'chrono', 'date_time', 'regex', 'filesystem'}
    Stacktrace = {'system', 'stacktrace', 'thread', 'atomic', 'exception', 'chrono', 'timer', 'date_time', 'filesystem'}
    Statechart = {'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'timer', 'date_time'}
    System = {'system'}
    Test = {'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'timer', 'date_time'}
    Thread = {'system', 'thread', 'atomic', 'exception', 'test', 'chrono', 'timer', 'date_time', 'regex'}
    Timer = {'system', 'chrono', 'timer'}
    Tokenizer = {'system', 'chrono', 'timer', 'test'}
    Tr1 = {'system', 'atomic', 'program_options', 'random', 'test', 'chrono', 'timer', 'regex'}
    Tuple = {'system', 'chrono', 'timer', 'test'}
    TypeErasure = {'system', 'thread', 'atomic', 'exception', 'test', 'type_erasure', 'chrono', 'timer', 'date_time'}
    TypeTraits = {'system', 'chrono', 'timer', 'test'}
    Units = {'system', 'filesystem', 'test', 'chrono', 'timer', 'regex'}
    Utility = {'system', 'chrono', 'timer', 'test'}
    Uuid = {'system', 'test', 'chrono', 'timer', 'serialization', 'random'}
    Variant = {'system', 'chrono', 'timer', 'test'}
    Wave = {'system', 'thread', 'atomic', 'program_options', 'exception', 'wave', 'chrono', 'date_time', 'serialization', 'filesystem'}
    Xpressive = {'system', 'test', 'chrono', 'timer', 'regex'}
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
