---@type LazySpec
return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	cond = true,
	keys = { "<leader>f" },
	config = function()
		require("conform").setup({
			format_after_save = function(bufnr)
				local ignore_filetypes = {}
				-- return
				if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
					return
				end
				return {
					async = true,
					lsp_fallback = true,
				}
			end,
			formatters_by_ft = {
				-- ["*"] = { "injected" },
				c = { "clang_format" },
				cpp = { "clang_format" },
				css = { "prettier" },
				go = { "gofmt" },
				html = { "prettier" },
				htmldjango = { "prettier" },
				javascript = { "prettier" },
				json = { "jq" },
				lua = { "stylua" },
				markdown = { "dprint" },
				nix = { "nixpkgs_fmt" },
				python = { "ruff_format", "ruff_organize_imports" },
				rmd = { "styler" },
				rust = { "rustfmt" },
				sql = { "sql_formatter" },
				svelte = { "prettier" },
				tex = { "tex-fmt" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
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
