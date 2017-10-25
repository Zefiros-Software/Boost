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
        if not table.contains( modules, "_" .. mod ) then
            table.insert( modules, mod )
    
            zpm.extractdir( "libs/" .. mod )
        end
    end
end

tree = {
    _accumulators = {'timer', 'test', 'chrono', 'system'},
    _algorithm = {'timer', 'test', 'regex', 'system', 'chrono'},
    _array = {'timer', 'test', 'chrono', 'system'},
    _asio = {'thread', 'date_time', 'atomic', 'serialization', 'exception', 'coroutine', 'regex', 'system', 'chrono'},
    _assign = {'timer', 'test', 'chrono', 'system'},
    _atomic = {'thread', 'date_time', 'atomic', 'exception', 'system', 'chrono'},
    _bimap = {'mpi', 'python', 'timer', 'test', 'serialization', 'system', 'chrono'},
    _chrono = {'chrono', 'system'},
    _circularbuffer = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'system', 'chrono'},
    _compute = {'thread', 'date_time', 'program_options', 'atomic', 'timer', 'test', 'exception', 'system', 'chrono', 'filesystem'},
    _config = {'regex', 'system', 'filesystem'},
    _container = {'timer', 'chrono', 'system', 'container'},
    _context = {'thread', 'date_time', 'program_options', 'atomic', 'timer', 'test', 'exception', 'system', 'context', 'chrono'},
    _convert = {'timer', 'chrono', 'system'},
    _coroutine = {'random', 'thread', 'date_time', 'program_options', 'atomic', 'timer', 'test', 'exception', 'coroutine', 'system', 'chrono'},
    _coroutine2 = {'thread', 'date_time', 'program_options', 'atomic', 'timer', 'test', 'exception', 'system', 'context', 'chrono'},
    _crc = {'timer', 'test', 'chrono', 'system'},
    _datetime = {'serialization', 'date_time'},
    _disjointsets = {'mpi', 'python', 'timer', 'test', 'serialization', 'system', 'chrono'},
    _dll = {'thread', 'date_time', 'atomic', 'exception', 'system', 'chrono', 'filesystem'},
    _dynamicbitset = {'timer', 'test', 'serialization', 'system', 'chrono'},
    _endian = {'timer', 'chrono', 'system'},
    _exception = {'thread', 'date_time', 'atomic', 'exception', 'system', 'chrono'},
    _fiber = {'thread', 'fiber', 'date_time', 'atomic', 'timer', 'test', 'exception', 'regex', 'system', 'context', 'chrono'},
    _filesystem = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'regex', 'system', 'chrono', 'filesystem'},
    _flyweight = {'serialization', 'date_time'},
    _foreach = {'timer', 'test', 'chrono', 'system'},
    _format = {'timer', 'test', 'chrono', 'system'},
    _function = {'timer', 'test', 'chrono', 'system'},
    _geometry = {'mpi', 'date_time', 'program_options', 'timer', 'test', 'serialization', 'chrono', 'system', 'python'},
    _graph = {'mpi', 'thread', 'date_time', 'python', 'atomic', 'timer', 'test', 'graph', 'serialization', 'exception', 'regex', 'system', 'graph_parallel', 'chrono', 'filesystem'},
    _graphparallel = {'mpi', 'thread', 'date_time', 'python', 'atomic', 'timer', 'test', 'graph', 'serialization', 'exception', 'regex', 'system', 'graph_parallel', 'chrono', 'filesystem'},
    _heap = {'timer', 'test', 'chrono', 'system'},
    _icl = {'date_time', 'timer', 'test', 'system', 'chrono'},
    _interprocess = {'date_time'},
    _intrusive = {'date_time'},
    _io = {'timer', 'test', 'chrono', 'system'},
    _iostreams = {'iostreams', 'timer', 'test', 'regex', 'system', 'chrono', 'filesystem'},
    _iterator = {'timer', 'test', 'chrono', 'system'},
    _lambda = {'timer', 'test', 'chrono', 'system'},
    _lexicalcast = {'date_time', 'timer', 'test', 'system', 'chrono', 'filesystem'},
    _locale = {'thread', 'date_time', 'locale', 'atomic', 'exception', 'system', 'chrono'},
    _localfunction = {'chrono', 'system'},
    _lockfree = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'system', 'chrono'},
    _log = {'log', 'thread', 'date_time', 'locale', 'atomic', 'timer', 'test', 'exception', 'regex', 'system', 'chrono', 'filesystem'},
    _logic = {'timer', 'test', 'chrono', 'system'},
    _math = {'thread', 'date_time', 'program_options', 'atomic', 'timer', 'test', 'serialization', 'exception', 'math', 'regex', 'system', 'chrono', 'filesystem'},
    _metaparse = {'timer', 'test', 'chrono', 'system'},
    _move = {'timer', 'chrono', 'system'},
    _mpi = {'mpi', 'thread', 'date_time', 'python', 'atomic', 'timer', 'test', 'graph', 'serialization', 'exception', 'regex', 'system', 'chrono'},
    _msm = {'timer', 'test', 'serialization', 'system', 'chrono'},
    _multiprecision = {'thread', 'date_time', 'atomic', 'timer', 'test', 'serialization', 'exception', 'math', 'regex', 'system', 'chrono', 'filesystem'},
    _multiarray = {'timer', 'test', 'chrono', 'system'},
    _multiindex = {'serialization', 'date_time'},
    _numeric = {'mpi', 'thread', 'date_time', 'python', 'atomic', 'timer', 'test', 'serialization', 'exception', 'system', 'chrono', 'filesystem'},
    _parameter = {'mpi', 'python', 'serialization'},
    _phoenix = {'thread', 'date_time', 'atomic', 'timer', 'test', 'regex', 'exception', 'system', 'chrono'},
    _polygon = {'timer', 'test', 'chrono', 'system'},
    _pool = {'thread', 'date_time', 'atomic', 'serialization', 'exception', 'system', 'chrono'},
    _process = {'thread', 'iostreams', 'date_time', 'program_options', 'atomic', 'timer', 'test', 'exception', 'coroutine', 'regex', 'system', 'chrono', 'filesystem'},
    _programoptions = {'regex', 'program_options'},
    _propertymap = {'mpi', 'python', 'timer', 'test', 'serialization', 'system', 'chrono'},
    _propertytree = {'thread', 'date_time', 'atomic', 'timer', 'test', 'serialization', 'exception', 'system', 'chrono'},
    _proto = {'timer', 'test', 'chrono', 'system'},
    _ptrcontainer = {'timer', 'test', 'serialization', 'system', 'chrono'},
    _python = {'mpi', 'python', 'serialization'},
    _qvm = {'timer', 'test', 'chrono', 'system'},
    _random = {'random', 'atomic', 'timer', 'test', 'regex', 'system', 'chrono'},
    _range = {'timer', 'test', 'regex', 'system', 'chrono'},
    _rational = {'timer', 'test', 'chrono', 'system'},
    _regex = {'thread', 'date_time', 'program_options', 'atomic', 'exception', 'regex', 'system', 'chrono', 'filesystem'},
    _serialization = {'system', 'serialization', 'filesystem'},
    _signals = {'mpi', 'python', 'timer', 'test', 'serialization', 'signals', 'system', 'chrono'},
    _signals2 = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'signals', 'system', 'chrono'},
    _smartptr = {'thread', 'date_time', 'atomic', 'exception', 'system', 'chrono'},
    _sort = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'system', 'chrono'},
    _spirit = {'thread', 'date_time', 'atomic', 'exception', 'regex', 'system', 'chrono', 'filesystem'},
    _stacktrace = {'thread', 'date_time', 'stacktrace', 'atomic', 'timer', 'exception', 'system', 'chrono', 'filesystem'},
    _statechart = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'system', 'chrono'},
    _system = {'system'},
    _test = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'system', 'chrono'},
    _thread = {'thread', 'date_time', 'atomic', 'timer', 'test', 'regex', 'exception', 'system', 'chrono'},
    _timer = {'timer', 'chrono', 'system'},
    _tokenizer = {'timer', 'test', 'chrono', 'system'},
    _tr1 = {'random', 'program_options', 'atomic', 'timer', 'test', 'regex', 'system', 'chrono'},
    _tuple = {'timer', 'test', 'chrono', 'system'},
    _typeerasure = {'thread', 'date_time', 'atomic', 'timer', 'test', 'exception', 'type_erasure', 'system', 'chrono'},
    _typetraits = {'timer', 'test', 'chrono', 'system'},
    _units = {'timer', 'test', 'regex', 'system', 'chrono', 'filesystem'},
    _utility = {'timer', 'test', 'chrono', 'system'},
    _uuid = {'random', 'timer', 'test', 'serialization', 'system', 'chrono'},
    _variant = {'timer', 'test', 'chrono', 'system'},
    _wave = {'thread', 'date_time', 'program_options', 'atomic', 'wave', 'serialization', 'exception', 'system', 'chrono', 'filesystem'},
    _xpressive = {'timer', 'test', 'regex', 'system', 'chrono'},
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
    if zpm.setting(type:sub(2)) then
        addModules(mods)
    end
end

zpm.extractdir( "boost", "include/" )
