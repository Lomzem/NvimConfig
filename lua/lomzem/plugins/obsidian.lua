return {
	"epwalsh/obsidian.nvim",
	enabled = false,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.opt.conceallevel = 2 -- for obsidian
		require("obsidian").setup({
			follow_url_func = function(url)
				vim.ui.open(url) -- need Neovim 0.10.0+
			end,
			workspaces = {
				{
					name = "Chico Obsidian",
					path = "~/coding/chico-obsidian",
				},
			},
			completion = {
				-- nvim_cmp = true,
				min_chars = 2,
			},
		})
	end,
}
