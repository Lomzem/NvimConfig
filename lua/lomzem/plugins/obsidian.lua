return {
	"epwalsh/obsidian.nvim",
	ft = "markdown",
	lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.opt.conceallevel = 2 -- for obsidian
		require("obsidian").setup({
			workspaces = {
				{
					name = "Chico Obsidian",
					path = "~/coding/chico-obsidian",
				},
			},
			completion = {
				nvim_cmp = true,
				min_chars = 2,
			},
		})
	end,
}
