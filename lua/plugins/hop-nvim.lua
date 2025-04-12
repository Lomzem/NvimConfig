return {
	"smoka7/hop.nvim",
	lazy = true,
	opts = {
		keys = "etovxqpdygfblzhckisuran",
	},
	cmd = { "HopLineStart", "HopWord" },
	keys = {
		{ "<leader>vk", "V<cmd>HopLineStart<cr>", mode = "n" },
		{ "<leader>k", "<cmd>HopLineStart<cr>", mode = { "n", "x", "o" } },
		{ "'", "<cmd>HopWord<cr>", mode = { "n", "x", "o" } },
		{ "s", "<cmd>HopChar1<cr>", mode = { "n", "x", "o" } },
		{
			"d<leader>k",
			function()
				vim.cmd("norm V")
				vim.cmd("HopLineStart")
				vim.cmd("norm d")
			end,
			mode = { "n" },
		},
	},
}
