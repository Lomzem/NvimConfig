return {
	"stevearc/oil.nvim",
    event = "VeryLazy",
	opts = {
		view_options = {
			show_hidden = true,
		},
		keymaps = {
			["<C-s>"] = { false, desc = "Oil Save" },
		},
	},
	dependencies = { "echasnovski/mini.icons" , lazy=true},
}
