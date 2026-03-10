return {
	"supermaven-inc/supermaven-nvim",
	event = "InsertEnter",
	init = function()
		vim.g.supermavenenabled = "false"
	end,
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
					vim.cmd("silent !SupermavenStart")
					vim.notify("Supermaven is enabled", vim.log.levels.INFO)
				else
					vim.cmd("silent !SupermavenStop")
					vim.notify("Supermaven is disabled", vim.log.levels.INFO)
				end
			end,
		},
	},
}
