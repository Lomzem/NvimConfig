return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>li", "<cmd>ObsidianLinks<cr>", "n" },
		{ "<leader>bl", "<cmd>ObsidianBacklinks<cr>", "n" },
		{ "<leader>co", "<cmd>ObsidianTOC<cr>", "n" },
		{ "<leader>ot", "<cmd>ObsidianTags<cr>", "n" },
	},
	opts = {
		follow_url_func = function(url)
			vim.ui.open(url)
		end,
		mappings = {
			["gf"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
			["<leader>ch"] = {
				action = function()
					return require("obsidian").util.toggle_checkbox()
				end,
				opts = { buffer = true },
			},
		},
		note_path_func = function(spec)
			local path = spec.dir / tostring(spec.title)
			return path:with_suffix(".md")
		end,
		ui = {
			enable = false,
			checkboxes = {
				[" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
				["x"] = { char = "", hl_group = "ObsidianDone" },
			},
		},
		wiki_link_func = "use_alias_only",
		workspaces = {
			{
				name = "Chico Obsidian",
				path = "~/coding/chico-obsidian/",
			},
		},
		-- {
		-- 	name = "301W",
		-- 	path = "~/coding/chico-obsidian/301W/",
		-- },
	},
}
