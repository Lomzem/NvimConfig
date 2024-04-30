return {
	"mbrea-c/wal-colors.nvim",
	config = function()
		vim.cmd([[colorscheme mbc]]) -- activate the colorscheme
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,
	priority = 1000, -- recommended to ensure the colorscheme
	-- is loaded before other plugins
}
