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
				vim.g.supermavenenabled = vim.g.supermavenenabled == "true" and "false" or "true"
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
