return {
	"ibhagwan/fzf-lua",
	event = "VeryLazy",
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
