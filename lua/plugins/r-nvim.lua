return {
	"R-nvim/R.nvim",
	lazy = true,
	dependencies = {
		"R-nvim/cmp-r",
	},
	ft = { "r", "rmd" },
	config = function()
		vim.g.rout_follow_colorscheme = true
		require("r").setup({
			rconsole_width = 57,
			min_editor_width = 18,
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
					keyset("<leader>rf", "<Plug>RStart")
					keyset("K", "<Plug>RObjectPr")
					keyset("<cr>", "<Plug>RSendChunk")
					keyset("<leader><cr>", "<Plug>RSendLine")
					keyset("<c-h>", "<Plug>RHelp")
					keyset("<c-l>", "<Plug>RClearConsole")
					-- keyset("<a-q>", "<cmd>qa<cr>")
				end,
			},
		})
	end,
}
