return {
	"stevearc/oil.nvim",
	event = "VeryLazy",
	opts = {
		view_options = {
			show_hidden = true,
		},
		keymaps = {
			["<C-s>"] = { false, desc = "Oil Save" },
			["<C-p>"] = "<cmd>FzfLua files<cr>"
		},
	},
	keys = {
		{ "<leader>pv", "<cmd>Oil<cr>" },
	},
	dependencies = "echasnovski/mini.icons",
}
