local _M, childrequire, brequire = require("newmodule")(...)

_M.all = {
	"30log",
	"middleclass",
	"hump",
	"secs",
	"slither",
	--"oops", -- not ready, some test fail
	--"upperclass", -- not supported yet, https://github.com/admin36/lua-upperclass
}

-- Try to load all implementation and set if success or not
local function autotest()
	local available = {}
	for i, name in ipairs(_M.all) do
		if pcall(brequire, name) then
			available[#available+1] = name
		end
	end
		local def = brequire("default") -- load classcommons2.default
	def.available = available
end
autotest()

_M.autotest = autotest
return _M
