return {
	"smoka7/hop.nvim",
	config = function()
		require("hop").setup({
			keys = "etovxqpdygfblzhckisuran",
			create_hl_autocmd = false,
		})
		vim.api.nvim_set_hl(0, "HopNextKey", { link = "label" })
		vim.api.nvim_set_hl(0, "HopNextKey1", { link = "label" })
		vim.api.nvim_set_hl(0, "HopNextKey2", { link = "label" })
	end,
	cmd = { "HopLineStart", "HopWord" },
	keys = {
		-- {
		-- 	'"',
		-- 	function()
		-- 		vim.cmd("norm <esc>V")
		-- 		vim.cmd("HopLineStart")
		-- 	end,
		-- 	mode = "v",
		-- },
		{
			"<leader>k",
			function()
				vim.cmd("norm <esc>V")
				vim.cmd("HopLineStart")
			end,
			mode = "v",
		},
		{ "<leader>k", "<cmd>HopLineStart<cr>", mode = { "n", "x", "o" } },
		{ '"', "<cmd>HopLineStart<cr>", mode = { "n", "x", "o" } },
		{ "'", "<cmd>HopWord<cr>", mode = { "n", "x", "o" } },
		-- { "s", "<cmd>HopChar1<cr>", mode = { "n", "x", "o" } },
		{
			"d<leader>k",
			function()
				vim.cmd("norm <esc>V")
				vim.cmd("HopLineStart")
				vim.cmd("norm d")
			end,
			mode = { "n" },
		},
	},
}
