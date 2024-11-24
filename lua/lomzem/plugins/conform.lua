return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			-- format_after_save = {
			-- 	async = true,
			-- 	lsp_fallback = true,
			-- },
			-- I miss autoformat :(
			format_after_save = function() end,
			formatters_by_ft = {
				cpp = { "clang_format" },
				go = { "gofmt" },
				lua = { "stylua" },
				javascript = { "prettier" },
				python = { "black" },
			},
			formatters = {
				clang_format = {
					prepend_args = {
						"-style={IndentWidth: 4, AllowShortFunctionsOnASingleLine: None, PointerAlignment: Left, ReferenceAlignment: Right, BreakConstructorInitializers: AfterColon, PackConstructorInitializers: Never}",
					},
				},
			},
		})

		vim.g.disable_autoformat = true

		vim.api.nvim_create_user_command("Format", function(args)
			local range = nil
			if args.count ~= -1 then
				local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
				range = {
					start = { args.line1, 0 },
					["end"] = { args.line2, end_line:len() },
				}
			end
			require("conform").format({ async = true, lsp_fallback = true, range = range })
		end, { range = true })

		vim.keymap.set("n", "<leader>f", "<CMD>Format<CR>")
	end,
}
