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
    accumulators = {'timer', 'test', 'chrono', 'system'},
    algorithm = {'timer', 'test', 'regex', 'system', 'chrono'},
    array = {'timer', 'test', 'chrono', 'system'},
    asio = {'thread', 'date_time', 'atomic', 'serialization', 'exception', 'coroutine', 'regex', 'system', 'chrono'},
    assign = {'timer', 'test', 'chrono', 'system'},
    atomic = {'thread', 'date_time', 'atomic', 'exception', 'system', 'chrono'},
    bimap = {'mpi', 'python', 'timer', 'test', 'serialization', 'system', 'chrono'},
    chrono = {'chrono', 'system'},
    circularbuffer = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'system', 'chrono'},
    compute = {'thread', 'date_time', 'program_options', 'atomic', 'timer', 'test', 'exception', 'system', 'chrono', 'filesystem'},
    config = {'regex', 'system', 'filesystem'},
    container = {'timer', 'chrono', 'system', 'container'},
    context = {'thread', 'date_time', 'program_options', 'atomic', 'timer', 'test', 'exception', 'system', 'context', 'chrono'},
    convert = {'timer', 'chrono', 'system'},
    coroutine = {'random', 'thread', 'date_time', 'program_options', 'atomic', 'timer', 'test', 'exception', 'coroutine', 'system', 'chrono'},
    coroutine2 = {'thread', 'date_time', 'program_options', 'atomic', 'timer', 'test', 'exception', 'system', 'context', 'chrono'},
    crc = {'timer', 'test', 'chrono', 'system'},
    datetime = {'serialization', 'date_time'},
    disjointsets = {'mpi', 'python', 'timer', 'test', 'serialization', 'system', 'chrono'},
    dll = {'thread', 'date_time', 'atomic', 'exception', 'system', 'chrono', 'filesystem'},
    dynamicbitset = {'timer', 'test', 'serialization', 'system', 'chrono'},
    endian = {'timer', 'chrono', 'system'},
    exception = {'thread', 'date_time', 'atomic', 'exception', 'system', 'chrono'},
    fiber = {'thread', 'fiber', 'date_time', 'atomic', 'timer', 'test', 'exception', 'regex', 'system', 'context', 'chrono'},
    filesystem = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'regex', 'system', 'chrono', 'filesystem'},
    flyweight = {'serialization', 'date_time'},
    foreach = {'timer', 'test', 'chrono', 'system'},
    format = {'timer', 'test', 'chrono', 'system'},
    function = {'timer', 'test', 'chrono', 'system'},
    geometry = {'mpi', 'date_time', 'program_options', 'timer', 'test', 'serialization', 'chrono', 'system', 'python'},
    graph = {'mpi', 'thread', 'date_time', 'python', 'atomic', 'timer', 'test', 'graph', 'serialization', 'exception', 'regex', 'system', 'graph_parallel', 'chrono', 'filesystem'},
    graphparallel = {'mpi', 'thread', 'date_time', 'python', 'atomic', 'timer', 'test', 'graph', 'serialization', 'exception', 'regex', 'system', 'graph_parallel', 'chrono', 'filesystem'},
    heap = {'timer', 'test', 'chrono', 'system'},
    icl = {'date_time', 'timer', 'test', 'system', 'chrono'},
    interprocess = {'date_time'},
    intrusive = {'date_time'},
    io = {'timer', 'test', 'chrono', 'system'},
    iostreams = {'iostreams', 'timer', 'test', 'regex', 'system', 'chrono', 'filesystem'},
    iterator = {'timer', 'test', 'chrono', 'system'},
    lambda = {'timer', 'test', 'chrono', 'system'},
    lexicalcast = {'date_time', 'timer', 'test', 'system', 'chrono', 'filesystem'},
    locale = {'thread', 'date_time', 'locale', 'atomic', 'exception', 'system', 'chrono'},
    localfunction = {'chrono', 'system'},
    lockfree = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'system', 'chrono'},
    log = {'log', 'thread', 'date_time', 'locale', 'atomic', 'timer', 'test', 'exception', 'regex', 'system', 'chrono', 'filesystem'},
    logic = {'timer', 'test', 'chrono', 'system'},
    math = {'thread', 'date_time', 'program_options', 'atomic', 'timer', 'test', 'serialization', 'exception', 'math', 'regex', 'system', 'chrono', 'filesystem'},
    metaparse = {'timer', 'test', 'chrono', 'system'},
    move = {'timer', 'chrono', 'system'},
    mpi = {'mpi', 'thread', 'date_time', 'python', 'atomic', 'timer', 'test', 'graph', 'serialization', 'exception', 'regex', 'system', 'chrono'},
    msm = {'timer', 'test', 'serialization', 'system', 'chrono'},
    multiprecision = {'thread', 'date_time', 'atomic', 'timer', 'test', 'serialization', 'exception', 'math', 'regex', 'system', 'chrono', 'filesystem'},
    multiarray = {'timer', 'test', 'chrono', 'system'},
    multiindex = {'serialization', 'date_time'},
    numeric = {'mpi', 'thread', 'date_time', 'python', 'atomic', 'timer', 'test', 'serialization', 'exception', 'system', 'chrono', 'filesystem'},
    parameter = {'mpi', 'python', 'serialization'},
    phoenix = {'thread', 'date_time', 'atomic', 'timer', 'test', 'regex', 'exception', 'system', 'chrono'},
    polygon = {'timer', 'test', 'chrono', 'system'},
    pool = {'thread', 'date_time', 'atomic', 'serialization', 'exception', 'system', 'chrono'},
    process = {'thread', 'iostreams', 'date_time', 'program_options', 'atomic', 'timer', 'test', 'exception', 'coroutine', 'regex', 'system', 'chrono', 'filesystem'},
    programoptions = {'regex', 'program_options'},
    propertymap = {'mpi', 'python', 'timer', 'test', 'serialization', 'system', 'chrono'},
    propertytree = {'thread', 'date_time', 'atomic', 'timer', 'test', 'serialization', 'exception', 'system', 'chrono'},
    proto = {'timer', 'test', 'chrono', 'system'},
    ptrcontainer = {'timer', 'test', 'serialization', 'system', 'chrono'},
    python = {'mpi', 'python', 'serialization'},
    qvm = {'timer', 'test', 'chrono', 'system'},
    random = {'random', 'atomic', 'timer', 'test', 'regex', 'system', 'chrono'},
    range = {'timer', 'test', 'regex', 'system', 'chrono'},
    rational = {'timer', 'test', 'chrono', 'system'},
    regex = {'thread', 'date_time', 'program_options', 'atomic', 'exception', 'regex', 'system', 'chrono', 'filesystem'},
    serialization = {'system', 'serialization', 'filesystem'},
    signals = {'mpi', 'python', 'timer', 'test', 'serialization', 'signals', 'system', 'chrono'},
    signals2 = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'signals', 'system', 'chrono'},
    smartptr = {'thread', 'date_time', 'atomic', 'exception', 'system', 'chrono'},
    sort = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'system', 'chrono'},
    spirit = {'thread', 'date_time', 'atomic', 'exception', 'regex', 'system', 'chrono', 'filesystem'},
    stacktrace = {'thread', 'date_time', 'stacktrace', 'atomic', 'timer', 'exception', 'system', 'chrono', 'filesystem'},
    statechart = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'system', 'chrono'},
    system = {'system'},
    test = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'system', 'chrono'},
    thread = {'thread', 'date_time', 'atomic', 'timer', 'test', 'regex', 'exception', 'system', 'chrono'},
    timer = {'timer', 'chrono', 'system'},
    tokenizer = {'timer', 'test', 'chrono', 'system'},
    tr1 = {'random', 'program_options', 'atomic', 'timer', 'test', 'regex', 'system', 'chrono'},
    tuple = {'timer', 'test', 'chrono', 'system'},
    typeerasure = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'type_erasure', 'system', 'chrono'},
    typetraits = {'timer', 'test', 'chrono', 'system'},
    units = {'timer', 'test', 'regex', 'system', 'chrono', 'filesystem'},
    utility = {'timer', 'test', 'chrono', 'system'},
    uuid = {'random', 'timer', 'test', 'serialization', 'system', 'chrono'},
    variant = {'timer', 'test', 'chrono', 'system'},
    wave = {'thread', 'date_time', 'program_options', 'atomic', 'wave', 'serialization', 'exception', 'system', 'chrono', 'filesystem'},
    xpressive = {'timer', 'test', 'regex', 'system', 'chrono'},
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
