return {
	"yetone/avante.nvim",
    enabled = false,
	event = "VeryLazy",
	lazy = false,
	version = "*", -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
	opts = {
		provider = "groq",
		vendors = {
			groq = {
				__inherited_from = "openai",
				api_key_name = "GROQ_API_KEY",
				endpoint = "https://api.groq.com/openai/v1/",
				model = "llama-3.1-70b-versatile",
			},
		},
	},
	init = function()
		vim.opt.laststatus = 3
	end,
	build = "make",
	dependencies = {
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
}
