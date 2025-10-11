---@type LazySpec
return {
	"shaunsingh/nord.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.nord_italic = false
		vim.g.nord_bold = false
		vim.g.nord_disable_background = true
	end,
}
