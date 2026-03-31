---@type LazySpec
return {
	"supermaven-inc/supermaven-nvim",
	event = "VeryLazy",
	keys = {
		{
			"<m-'>",
			function()
				local api = require("supermaven-nvim.api")
				api.toggle()
				if api.is_running() then
					vim.notify("Supermaven Enabled!")
				else
					vim.notify("Supermaven Disabled!")
				end
			end,
		},
	},
	opts = {
		keymaps = {
			accept_suggestion = "<right>",
		},
	},
}
