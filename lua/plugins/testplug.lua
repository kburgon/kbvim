local M = {}
local base = require("plugins.base.plugin_base")
setmetatable(M, base)

function M.test()
	return "test"
end

return M
