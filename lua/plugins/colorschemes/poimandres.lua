return {
	"olivercederborg/poimandres.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		{
			-- disable_background = true,
			-- disable_float_background = true,
		},
	},
	config = function()
		vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { link = "markdownH1" })
		vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { link = "markdownH2" })
		vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { link = "markdownH3" })
		vim.api.nvim_set_hl(0, "@markup.heading.4.markdown", { link = "markdownH4" })
	end,
}
