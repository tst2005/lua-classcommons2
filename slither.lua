
local common = require("slither-commons2")
local class, instance = assert(common.class), assert(common.instance)

local _M = require("newmodule")(...)
_M.class = class
_M.instance = instance
_M.__BY = "slither"
return _M
