---@type LazySpec
return {
	"supermaven-inc/supermaven-nvim",
	event = "VeryLazy",
	keys = {
		{
			"<m-'>",
			"<cmd>SupermavenToggle<cr>",
		},
	},
	opts = {
		keymaps = {
			accept_suggestion = "<right>",
		},
	},
}
