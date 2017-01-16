# Boost
To use Boost in [ZPM](http://zpm.zefiros.eu), just use:

# Status
OS          | Status
----------- | -------
Linux & OSX | [![Build Status](https://travis-ci.org/Zefiros-Software/Boost.svg?branch=master)](https://travis-ci.org/Zefiros-Software/Boost)
Windows     | [![Build status](https://ci.appveyor.com/api/projects/status/jry48qkgq4opd8ux?svg=true)](https://ci.appveyor.com/project/PaulVisscher/boost)

# [ZPM](http://zpm.zefiros.eu) Installation
In `.package.json`
```json
"requires": [
    {
        "name": "Zefiros-Software/Boost",
        "version": "^1.63.0"
    }
]
```

In `premake5.lua`
```lua
zpm.uses "Zefiros-Software/Boost"
```

## Options
You should define what libraries you use from boost like so:

```json
"requires": [
    {
        "name": "Zefiros-Software/Boost",
        "version": "^1.63.0",
        "options": {
            "Algorithm": true
        }
    }
]
```


**Available Libraries**

* Accumulators
* Algorithm
* Array
* Asio
* Assign
* Atomic
* Bimap
* Bind
* Chrono
* CircularBuffer
* Compute
* Config
* Container
* Context
* Conversion
* Convert
* Coroutine
* Coroutine2
* Crc
* DateTime
* DisjointSets
* Dll
* DynamicBitset
* Endian
* Exception
* Fiber
* Filesystem
* Flyweight
* Foreach
* Format
* Function
* Functional
* Geometry
* Gil
* Graph
* GraphParallel
* Heap
* Icl
* Interprocess
* Intrusive
* Io
* Iostreams
* Iterator
* Lambda
* LexicalCast
* Locale
* LocalFunction
* Lockfree
* Log
* Logic
* Math
* Metaparse
* Move
* Mpi
* Mpl
* Msm
* MultiArray
* MultiIndex
* Multiprecision
* Numeric
* Parameter
* Phoenix
* Polygon
* Pool
* ProgramOptions
* PropertyMap
* PropertyTree
* Proto
* PtrContainer
* Python
* Qvm
* Random
* Range
* Rational
* Regex
* Serialization
* Signals
* Signals2
* SmartPtr
* Sort
* Spirit
* Statechart
* System
* Test
* Thread
* Timer
* Tokenizer
* Tr1
* Tuple
* TypeErasure
* TypeTraits
* Units
* Utility
* Uuid
* Variant
* Wave
* Xpressive