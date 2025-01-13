return {
	"folke/flash.nvim",
	event = "VeryLazy",
    opts = {
			modes = {
				char = {
					label = { exclude = "hjklviardcCxDIA" },
					highlight = { backdrop = false },
				},
			},
		},
	keys = {
		{
			"s",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump()
			end,
			desc = "Flash",
		},
		{
			"r",
			mode = "v",
			function()
				require("flash").treesitter()
			end,
			desc = "Flash Treesitter",
		},
	},
}
