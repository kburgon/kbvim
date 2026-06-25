local M = { plugin = false }
local base = require("plugins.base.plugin_base")
setmetatable(M, base)

function M.test()
	return "test"
end

M.plugin = false

return M
