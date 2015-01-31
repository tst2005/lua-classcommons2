local _M, crequire, brequire = require("newmodule")(...)

local common = brequire("secs-commons2")
local class, instance = assert(common.class), assert(common.instance)

_M.class = class
_M.instance = instance
_M.__BY = "secs"
return _M
