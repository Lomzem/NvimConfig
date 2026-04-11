---@type LazySpec
return {
	"lervag/vimtex",
	cond = false,
	lazy = false, -- See https://github.com/lervag/vimtex
	config = function()
		vim.g.vimtex_view_method = "zathura"
		vim.g.vimtex_quickfix_mode = 0 -- Don't auto-open quickfix
		vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- Free up K for LSP hover

		-- Optional: Filter annoying warnings
		vim.g.vimtex_quickfix_ignore_filters = {
			[[Underfull \\hbox]],
			[[Overfull \\hbox]],
		}
	end,
}
