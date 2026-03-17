---@type LazySpec
return {
	"fnune/codeactions-on-save.nvim",
	lazy = false,
	config = function()
		local cos = require("codeactions-on-save")
		cos.register({ "*.cpp", "*.hpp", "*.h", "*.c", "*.cc" }, { "quickfix" }, 1000)
	end,
}
