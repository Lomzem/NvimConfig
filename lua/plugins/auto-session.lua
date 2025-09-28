return {
	"rmagatti/auto-session",
	lazy = false,
	-- priority = 999,
	dependencies = {
		"folke/snacks.nvim",
		"mikavilpas/yazi.nvim",
	},
	init = function()
		vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
	end,
	opts = {
		post_restore_cmds = {},
		no_restore_cmds = {},
	},
}
