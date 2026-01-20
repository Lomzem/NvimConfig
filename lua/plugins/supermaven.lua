return {
	"supermaven-inc/supermaven-nvim",
	event = "InsertEnter",
	opts = {
		keymaps = {
			accept_suggestion = "<right>",
			clear_suggestion = nil,
			accept_word = nil,
		},
		log_level = "off",
	},
	cmd = {
		"SupermavenStart",
		"SupermavenStop",
		"SupermavenToggle",
	},
	keys = {
		{
			"<a-'>",
			function()
				if vim.g.supermavenenabled == "false" then
					vim.g.supermavenenabled = "true"
				else
					vim.g.supermavenenabled = "false"
				end
				if vim.g.supermavenenabled == "true" then
					vim.cmd("SupermavenStart")
					print("Supermaven is enabled")
				else
					vim.cmd("SupermavenStop")
					print("Supermaven is disabled")
				end
			end,
		},
	},
}
