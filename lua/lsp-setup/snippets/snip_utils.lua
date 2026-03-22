local M = {}

local s = require("luasnip").s

---@param name string
function M.autosnip(name, nodes)
	return s({
		trig = name,
		snippetType = "autosnippet",
		name = name,
		dscr = name,
	}, nodes)
end

return M
