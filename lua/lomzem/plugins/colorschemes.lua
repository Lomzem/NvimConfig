return {
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
			borderless_telescope = false,
		},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = { transparent_background = true },
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "moon",
			styles = {
				bold = true,
				italic = false,
			},
			-- variant = "main",
			disable_background = true,
			disable_float_background = true,
		},
	},
	{
		"folke/tokyonight.nvim",
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				-- floats = "transparent",
			},
		},
	},
	{
		"ellisonleao/gruvbox.nvim",
		opts = {
			transparent_mode = true,
		},
	},
	{
		"navarasu/onedark.nvim",
		opts = {
			transparent = true,
		},
	},
	{
		"RedsXDD/neopywal.nvim",
		name = "neopywal",
		lazy = false,
		priority = 1000,
		opts = {
			use_wallust = true,
			transparent_background = true,
			no_italic = true,
		},
	},
	-- Lua

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
