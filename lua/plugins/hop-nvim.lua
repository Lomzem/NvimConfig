return {
	"smoka7/hop.nvim",
	lazy = false,
	config = function()
		require("hop").setup({
			keys = "etovxqpdygfblzhckisuran",
			create_hl_autocmd = false,
		})
		vim.api.nvim_set_hl(0, "HopNextKey", { link = "label" })
		vim.api.nvim_set_hl(0, "HopNextKey1", { link = "label" })
		vim.api.nvim_set_hl(0, "HopNextKey2", { link = "label" })
	end,
	cmd = { "HopLineStart", "HopWord" },
	keys = {
		{
			"<cr>",
			"<cmd>HopLineStart<cr>",
			mode = { "n", "x", "o" },
		},
		{
			"d<cr>",
			function()
				local start_line = vim.fn.line(".")
				local hop = require("hop")

				local opts = setmetatable({}, { __index = hop.opts })
				hop.hint_with_regex(require("hop.jump_regex").by_line_start(), opts, function(jump_target)
					local target_line = jump_target.cursor.row
					local from_line = math.min(start_line, target_line)
					local to_line = math.max(start_line, target_line)
					vim.cmd(string.format("%d,%dd", from_line, to_line))
				end)
			end,
			mode = { "n" },
		},
		{
			"<cr>",
			function()
				vim.cmd("HopLine")
				vim.cmd("norm V")
			end,
			mode = { "v" },
		},
	},
}
