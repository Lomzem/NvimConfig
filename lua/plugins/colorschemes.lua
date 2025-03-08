return {
    {
        "shaunsingh/nord.nvim",
        priority = 1000,
        config = function()
            vim.g.nord_disable_background = true
        end
    },
	{
		"RedsXDD/neopywal.nvim",
		name = "neopywal",
		lazy = false,
		priority = 1000,
		opts = {
			transparent_background = true,
			no_italic = true,
			use_palette = {
				dark = "wallust",
				light = "wallust",
			},
		},
	},

	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
			borderless_pickers = false,
		},
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		-- opts = {},
		opts = { transparent_background = true },
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "main",
			styles = {
				bold = true,
				italic = false,
			},
			-- variant = "main",
			disable_background = true,
			-- disable_float_background = true,
		},
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
