return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		note_path_func = function(spec)
			local path = spec.dir / tostring(spec.title)
			return path:with_suffix(".md")
		end,
		ui = {
			checkboxes = {
				[" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
				["x"] = { char = "", hl_group = "ObsidianDone" },
			},
		},
		workspaces = {
			{
				name = "getting started",
				path = "~/coding/obsidian-getting-started/",
			},
		},
	},
}
