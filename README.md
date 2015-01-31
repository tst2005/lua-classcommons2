# Similar projects

[Class-Commons](https://github.com/bartbes/Class-Commons) was launched by [barbes](https://github.com/bartbes).

[ClassCommons2](https://github.com/tst2005/lua-classcommons2) was launched by [TsT](https://github.com/tst2005).

# Goal of ClassCommons2

It's the same goal with only one new main constraint : to NEVER modify the global environment.
Secondary goal is to be able to use more than one class system at a time.
And also provide a simple and fast way to get all class system implementation.


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
local cc2default = require("classcommons2.default")
cc2default.name = "middleclass"

local cc2 = require("classcommons2")
local class = cc2.class
local instance = cc2.instance
```

or load directly the wanted implementation with

```
local cc2 = require("classcommons2.middleclass")
local class = cc2.class
local instance = cc2.instance
```

# Universal way to manage class system

With the help of ([newmodule](https://github.com/tst2005/lua-newmodule) and [provide](https://github.com/tst2005/lua-provide) (See [lua-mininal](https://github.com/tst2005/lua-minimal) for details) classcommons2 will be able to provide the easiest was to got class and instance with :
```
local class = require("class") 
local instance = require("instance")
```


# Supported implementation

 * [secs]()
 * [30log]()
 * [hump]()
 * [slither]()
 * [middleclass]()
 * ...

# Why Am I decided to use SECS as default ?

 * because it the shortest one in term of line of code.
 * because the author this class system is barbes. It's a way to say thanks for the original ClassCommons initiative.


Have Fun !
