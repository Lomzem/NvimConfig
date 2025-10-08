return {
	"mikavilpas/yazi.nvim",
	dependencies = { "folke/snacks.nvim" },
	cmd = { "Yazi" },
	keys = {
		{
			"<a-f>",
			mode = { "n", "v" },
			"<cmd>Yazi<cr>",
			desc = "Open yazi at the current file",
		},
		{
			"<leader>pv",
			mode = { "n", "v" },
			"<cmd>Yazi<cr>",
			desc = "Open yazi at the current file",
		},
	},
	opts = {
		open_for_directories = false,
		keymaps = {
			show_help = "<f1>",
			open_file_in_vertical_split = "<c-x>",
			open_file_in_horizontal_split = false,
		},
	},
}
