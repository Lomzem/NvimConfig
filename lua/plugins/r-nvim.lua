return {
	"R-nvim/R.nvim",
	dependencies = {
		"R-nvim/cmp-r",
	},
	ft = { "r", "rmd" },
	config = function()
		vim.g.rout_follow_colorscheme = true
		local bufs = vim.api.nvim_list_bufs()
		local r_ft = { "r", "rmd" }
		for _, bufnr in ipairs(bufs) do
			local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = bufnr })
			if vim.tbl_contains(r_ft, buf_ft) then
				vim.keymap.set("n", "<a-q>", "<cmd>qa<cr>", {
					buffer = bufnr,
				})
			end
		end
		require("r").setup({
			rconsole_width = 57,
			min_editor_width = 18,
			quarto_chunk_hl = {
				bg = "#140C0E",
			},
			-- nvimpager = "split_v",
			R_args = { "--quiet" },
			auto_start = "always",
			hook = {
				on_filetype = function()
					local keyset = function(key, rhs)
						vim.keymap.set("n", key, rhs, {
							buffer = 0,
						})
					end
					keyset("<c-h>", "<Plug>RObjectPr")
					keyset("<c-l>", "<Plug>RClearConsole")
					keyset("<cr>", "<Plug>RSendChunk")
					keyset("<leader><cr>", "<Plug>RSendLine")
					keyset("<leader>rf", "<Plug>RStart")
					keyset("K", "<Plug>RHelp")
				end,
			},
		})
	end,
}
