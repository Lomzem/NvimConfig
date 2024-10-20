return {
	"folke/flash.nvim",
	event = "VeryLazy",
	config = function()
		require("flash").setup({
			modes = {
				char = {
					label = { exclude = "hjklviardcCxDIA" },
					highlight = { backdrop = false },
				},
			},
		})
	end,
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
