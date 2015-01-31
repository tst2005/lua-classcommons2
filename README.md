
[ClassCommons initiative](https://github.com/bartbes/Class-Commons) was launched by [barbes](https://github.com/bartbes)

My ClassCommons2 projet is the same projet with only one new main constraint : to NEVER modify the global environment.
Secondary goal is to be able to use more than one class system at a time.


ClassCommon use 2 global variables :
 * a `common_class` boolean to mark that the class common is supported
 * a `common` table with `common.class` and `common.instance`

ClassCommon2 always use module :
 * load the classcommons2 with require("classcommons2") (you will got the equivalent `common` table)
 * the previous `common.class` is got by using `require("class")` or 
 * the previous `common.instance` is got by using `require("instance")`


# Sample of use

```
require("classcommons2")
local class = require("class")
local instance = require("instance")
```

or

```
local cc2 = require("classcommons2")
local class = cc2.class
local instance = cc2.instance
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


