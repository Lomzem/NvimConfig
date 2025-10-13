---@class PoimandresConfig
---@field bold_vert_split boolean? use bold vertical separators
---@field dim_nc_background boolean? dim 'non-current' window backgrounds
---@field disable_background boolean? disable background
---@field disable_float_background boolean? disable background for floats
---@field disable_italics boolean? disable italics

---@type LazySpec
return {
	"olivercederborg/poimandres.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		---@type PoimandresConfig
		local opts = {
			-- disable_background = true,
			-- disable_float_background = true,
		}
		require("poimandres").setup(opts)
		vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { link = "markdownH1" })
		vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { link = "markdownH2" })
		vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { link = "markdownH3" })
		vim.api.nvim_set_hl(0, "@markup.heading.4.markdown", { link = "markdownH4" })
	end,
}
