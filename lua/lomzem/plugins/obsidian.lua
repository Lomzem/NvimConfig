return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>li", "<cmd>ObsidianLinks<CR>")
		vim.keymap.set("n", "<leader>bl", "<cmd>ObsidianBacklinks<CR>")

		require("obsidian").setup({
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
			wiki_link_func = "use_alias_only",
			workspaces = {
				{
					name = "getting started",
					path = "~/coding/obsidian-getting-started/",
				},
			},
		})
	end,
}
