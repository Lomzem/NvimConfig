return {
	"folke/flash.nvim",
	event = "VeryLazy",
	config = function()
		require("flash").setup({
			modes = {
				char = {
					jump_labels = true,
					highlight = { backdrop = false },
					label = { exclude = "hjklviardcCxDIA" },
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
	},
}
