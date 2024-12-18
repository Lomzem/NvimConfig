require("mason").setup()
require("mason-lspconfig").setup({})

local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())
capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = false

require("mason-lspconfig").setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({
			capabilities = capabilities,
		})
	end,
	["lua_ls"] = function()
		require("lspconfig").lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
				},
			},
		})
	end,
	["clangd"] = function()
		require("lspconfig").clangd.setup({
			cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
			capabilities = capabilities,
		})
	end,
	["rust_analyzer"] = function()
		require("rust-tools").setup({})
	end,
	["tinymist"] = function()
		require("lspconfig")["tinymist"].setup({
			capabilities = capabilities,
			offset_encoding = "utf-8",
		})
	end,
})
