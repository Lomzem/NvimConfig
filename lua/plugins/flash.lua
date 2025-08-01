return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = {
		modes = {
			char = {
				label = { exclude = "hjklviardcCxDIA" },
				highlight = { backdrop = false },
				char_actions = function(motion)
					return {
						[";"] = "next", -- set to `right` to always go right
						[","] = "prev", -- set to `left` to always go left
						-- clever-f style
						[motion:lower()] = nil,
						[motion:upper()] = nil,
					}
				end,
			},
		},
	},
	keys = {
		{
			"r",
			mode = "v",
			function()
				require("flash").treesitter()
				vim.cmd("norm V")
			end,
			desc = "Flash Treesitter",
		},
		{
			"dr",
			mode = "n",
			function()
				require("flash").treesitter()
				vim.cmd("norm Vd")
			end,
		},
		{
			"s",
			mode = { "n" },
			function()
				require("flash").jump()
			end,
		},
	},
}
