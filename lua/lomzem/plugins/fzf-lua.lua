return {
	"ibhagwan/fzf-lua",
    lazy = true,
	-- event = "VeryLazy",
	opts = {
		fzf_opts = {
			["--select-1"] = true,
		},
	},
	keys = {
		{ "<C-p>", "<cmd>FzfLua files<cr>" },
		{ "<leader>ps", "<cmd>FzfLua live_grep<cr>" },
	},
}
