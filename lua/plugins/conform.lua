---@type LazySpec
return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	keys = { "<leader>f" },
	config = function()
		-- local web_formatters = { "biome", "prettierd", "rustywind" }
		local web_formatters = { "prettier" }

		require("conform").setup({
			format_after_save = function(bufnr)
				-- local ignore_filetypes = { "rust" }
				-- local ignore_filetypes = { "ghostty" }
				local ignore_filetypes = { "python" }
				-- return
				if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
					return
				end
				return {
					async = true,
					lsp_fallback = true,
				}
			end,
			formatters = {
				styler = {
					command = "R",
					-- hijacking "https://github.com/devOpifex/r.nvim",
					args = {
						"-s",
						"-e",
						"styler::style_file(commandArgs(TRUE))",
						"--args",
						"$FILENAME",
					},
					stdin = false,
				},
			},
			formatters_by_ft = {
				-- ["*"] = { "injected" },
				rmd = { "styler" },
				c = { "clang_format" },
				cpp = { "clang_format" },
				css = { "prettier" },
				go = { "gofmt" },
				htmldjango = web_formatters,
				javascript = web_formatters,
				lua = { "stylua" },
				html = { "prettier" },
				markdown = { "prettierd" },
				python = { "ruff_format", "ruff_organize_imports" },
				rust = { "rustfmt" },
				sql = { "sql_formatter" },
				svelte = web_formatters,
				typescript = web_formatters,
				typescriptreact = web_formatters,
				typst = { "typstyle" },
				yaml = { "yamlfmt" },
			},

			-- formatters = require("formatters.formatters"),
		})

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

		if vim.fn.maparg("<leader>f", "n") == "" then
			vim.keymap.set("n", "<leader>f", "<cmd>Format<CR>")
		end
	end,
}
