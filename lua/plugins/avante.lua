return {
	"yetone/avante.nvim",
	lazy = true,
	version = false, -- Never set this value to "*"! Never!
	keys = {
		"v",
		"<leader>aa",
		"AvanteAsk",
	},
	opts = {
		selector = {
			--- @alias avante.SelectorProvider "native" | "fzf_lua" | "mini_pick" | "snacks" | "telescope" | fun(selector: avante.ui.Selector): nil
			provider = "snacks",
			provider_opts = {},
		},
		provider = "copilot",
		copilot = {
			model = "claude-3.5-sonnet",
			max_tokens = 64000,
			code_editing_commands = true, -- Enable code editing commands
		},
		gemini = {
			endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
			model = "gemini-2.5-flash-preview-04-17",
			-- model = "gemini-2.0-flash",
			timeout = 30000, -- Timeout in milliseconds
			temperature = 0,
			-- max_tokens = 8192,
			api_key_name = "GEMINI_API_KEY",
		},
	},
	build = "make",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"zbirenbaum/copilot.lua",
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		--- The below dependencies are optional,
		"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
		{
			-- support for image pasting
			-- "HakonHarnes/img-clip.nvim",
			-- event = "VeryLazy",
			-- opts = {
			-- 	-- recommended settings
			-- 	default = {
			-- 		embed_image_as_base64 = false,
			-- 		prompt_for_file_name = false,
			-- 		drag_and_drop = {
			-- 			insert_mode = true,
			-- 		},
			-- 		-- required for Windows users
			-- 		use_absolute_path = true,
			-- 	},
			-- },
		},
		{
			-- Make sure to set this up properly if you have lazy=true
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
}
