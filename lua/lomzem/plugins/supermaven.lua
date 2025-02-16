return {
	"supermaven-inc/supermaven-nvim",
    -- enabled = false,
	-- lazy = true,
    event = "VeryLazy",
	opts = {
		keymaps = {
			accept_suggestion = "<C-t>",
			clear_suggestion = nil,
			accept_word = nil,
		},
	},
	cmd = {
		"SupermavenStart",
		"SupermavenStop",
		"SupermavenToggle",
	},
}
