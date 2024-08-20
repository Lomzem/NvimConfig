return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "moon",
			disable_background = true,
			disable_float_background = true,
			-- disable_italics = true,
		},
	},
	{
		"catppuccin/nvim",
		name = "catpuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({ transparent_background = "true" })
		end,
	},
	{
		"folke/tokyonight.nvim",
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
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
