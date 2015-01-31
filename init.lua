local _M, crequire, brequire = require("newmodule")(...)
local default = crequire("default") -- load the classcommons2.default
return crequire(default.name) -- load the classcommons2.<DefaultName> configured as default

