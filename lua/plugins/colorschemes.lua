return {

	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "main",
			styles = {
				bold = true,
				italic = false,
			},
			disable_background = true,
		},
	},

	{
		"folke/tokyonight.nvim",
		opts = {
			-- styles = {
			-- 	sidebars = "transparent",
			-- 	floats = "transparent",
			-- },
		},
	},

	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_transparent_background = 1
		end,
	},

	{
		"olimorris/onedarkpro.nvim",
		opts = {
			options = {
				transparency = true,
			},
		},
		priority = 1000, -- Ensure it loads first
	},

	{
		"olivercederborg/poimandres.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("poimandres").setup({
				disable_background = true,
				disable_float_background = true,
			})
		end,
	},
}
