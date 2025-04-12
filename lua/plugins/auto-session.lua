return {
	"rmagatti/auto-session",
	lazy = false,
	dependencies = {
		"folke/snacks.nvim",
	},
	init = function()
		vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
	end,
	opts = {
		post_restore_cmds = {
			function()
				require("snacks")
				Snacks.indent.enable()
			end,
		},
	},
}
