-- vim.cmd("colorscheme rose-pine-main")
-- vim.cmd("colorscheme gruvbox")
-- vim.cmd("colorscheme catppuccin")
-- vim.cmd("colorscheme catppuccin-mocha")

vim.g.lushwal_configuration = {
	addons = {
		lualine = true,
	},
}

vim.g.lushwal_configuration = {
	color_overrides = function(colors)
		local overrides = {
			red = colors.color5,
			orange = colors.color1,
		}
		return vim.tbl_extend("force", colors, overrides)
	end,
	-- ...
}
vim.cmd("LushwalCompile")
vim.cmd("colorscheme lushwal")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
