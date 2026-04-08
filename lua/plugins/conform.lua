---@type LazySpec
return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({
					async = true,
					lsp_format = "fallback",
				})
			end,
		},
	},
	opts = {
		format_after_save = function(bufnr)
			local ignore_filetypes = {}
			if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
				return
			end
			return {
				async = true,
				lsp_format = "fallback",
			}
		end,
		formatters_by_ft = {
			c = { "clang_format" },
			cpp = { "clang_format" },
			css = { "biome" },
			go = { "gofmt" },
			html = { "biome" },
			javascript = { "biome" },
			json = { "jq" },
			lua = { "stylua" },
			markdown = { "dprint" },
			nix = { "nixpkgs_fmt" },
			python = { "ruff_format", "ruff_organize_imports" },
			rmd = { "styler" },
			rust = { "rustfmt" },
			sql = { "sql_formatter" },
			svelte = { "biome" },
			tex = { "tex-fmt" },
			toml = { "tombi" },
			typescript = { "biome" },
			typescriptreact = { "biome" },
			yaml = { "yamlfmt" },
		},
	},
}
