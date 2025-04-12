return {
	"smoka7/hop.nvim",
	lazy = true,
	opts = {
		keys = "etovxqpdygfblzhckisuran",
	},
	cmd = { "HopLineStart", "HopWord" },
	keys = {
		{
			"<leader>k",
			function()
				vim.cmd("norm V")
				vim.cmd("HopLineStart")
			end,
			mode = "v",
		},
		{ "<leader>k", "<cmd>HopLineStart<cr>", mode = { "n", "x", "o" } },
		{ "'", "<cmd>HopWord<cr>", mode = { "n", "x", "o" } },
		-- { "s", "<cmd>HopChar1<cr>", mode = { "n", "x", "o" } },
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
