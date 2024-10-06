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
}
