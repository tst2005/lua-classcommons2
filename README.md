# Original project

[Class-Commons](https://github.com/bartbes/Class-Commons) was launched by [barbes](https://github.com/bartbes) in 2011-2013.

[ClassCommons2](https://github.com/tst2005/lua-classcommons2) was launched by [TsT](https://github.com/tst2005).

# Goal of ClassCommons2

It's the same goal than ClassCommons with only one new main constraint: NEVER modify the global environment.
Unfortunately it's a break to the original [ClassCommons Specs](https://github.com/bartbes/Class-Commons/blob/master/SPECS.md) that is explicitly use globals.
A secondary goal is to be able to use more than one class system at a time
and also provide a simple and fast way to get all class system implementation.


# What changed between ClassCommons and ClassCommons2 ?

ClassCommons use 2 global variables :
 * a `common_class` boolean to mark that the class common is supported
 * a `common` table with `common.class` and `common.instance`

ClassCommon2 only use modules, no more global variable :
 * the `common_class` boolean was simply dropped.
 * the `common` table was return by a module

In details you have to :
 * load the classcommons2 with `require("classcommons2")`
   You will got the equivalent `common` table.


# Sample of use

```
local common = require("classcommons2")
local class = common.class
local instance = common.instance
```

By default the SECS class system was used.
You can choose the default with :

```
require("classcommons2.default").name = "middleclass"

local common = require("classcommons2")
local class = common.class
local instance = common.instance
```

or load directly the wanted implementation with

```
local common = require("classcommons2.middleclass")
local class = common.class
local instance = common.instance
```

# ClassCommons 2.1

```lua
local class = require("classcommons2")

local myfooclass = class("foo")
local myfooinstance = myfooclass()
```

## Call a class to create a new instance

Already supported :
 * 30log: already ok ([link](https://github.com/Yonaba/30log/blob/master/README.md#class%28%29))
 * middleclass : ?
 * secs : need small change (patched, seems ok)
 * hump : ?
 * slither : ?

# Supported implementation

 * [secs]()
 * [middleclass]()
 * [30log](https://github.com/Yonaba/30log.git) / [30logclasscommons](https://github.com/tst2005/30logclasscommons)[.git](ssh://git@github.com/tst2005/30logclasscommons.git)
 * [hump]()
 * [slither]()
 * ...

# Other implementation to support

* [classy](https://github.com/siffiejoe/lua-classy)
* [classic](https://github.com/rxi/classic)
* [lua-upperclass](https://github.com/admin36/lua-upperclass)
* [loop](https://rocks.moonscript.org/modules/luarocks/loop)
* [microlight](https://rocks.moonscript.org/modules/luarocks/microlight) ([doc](http://stevedonovan.github.io/microlight/))
* [LCS](https://github.com/Yonaba/Lua-Class-System)
* [sunclass](https://github.com/qwook/sunclass/)
* [lua-prototype](http://siffiejoe.github.io/lua-prototype/)
* [opject-lua](https://github.com/sroccaserra/object-lua/) (deprecated?)

# Why use SECS as default ?

 * because it the shortest implementation found.
 * because the author of this class system is barbes, the one who initiate the ClassCommons. It's my way to say thanks to this initiative.

# TODO

 * Add the modified test-suite !
 * Add license header in each files
 * Add submodule for each class implementation
 * Try to allow class("name") without table argument.
 * See if the classcommons2 must really provide the `require("class")` and `require("instance")`
 * * With the help of ([newmodule](https://github.com/tst2005/lua-newmodule) and [provide](https://github.com/tst2005/lua-provide) (See [lua-mininal](https://github.com/tst2005/lua-minimal) for details) classcommons2 will be able to provide the easiest was to got class and instance. Currently done by the dragoon-framework.


Have Fun !
