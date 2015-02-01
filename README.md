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

# Supported implementation

 * [secs]()
 * [30log]()
 * [hump]()
 * [slither]()
 * [middleclass]()
 * ...

# Why use SECS as default ?

 * because it the shortest implementation found.
 * because the author of this class system is barbes, the one who initiate the ClassCommons. It's my way to say thanks to this initiative.

# TODO

 * Add the tests suite !
 * Add license header in each files
 * Add submodule for each class implementation
 * See to allow class("name") without table argument.
 * See if the classcommons2 must really provide the `require("class")` and `require("instance")`
 * * With the help of ([newmodule](https://github.com/tst2005/lua-newmodule) and [provide](https://github.com/tst2005/lua-provide) (See [lua-mininal](https://github.com/tst2005/lua-minimal) for details) classcommons2 will be able to provide the easiest was to got class and instance. Currently done by the dragoon-framework.


Have Fun !
