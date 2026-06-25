local M = {}
M.__index = M

function M:isPlugin()
	return true
end

-- function M:getLazyConfig()
-- 	return {
-- 		self.repo,
-- 		name = self.name,
-- 		config = self.config,
-- 		branch = self.branch,
-- 		version = self.version,
-- 		priority = self.priority,
-- 		dependencies = self.dependencies,
-- 		opts = self.opts,
-- 		build = self.build,
-- 		lazy = self.lazy,
-- 		init = self.init,
-- 		cmd = self.cmd,
-- 	}
-- end

return M
