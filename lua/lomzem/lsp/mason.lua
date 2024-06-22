require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"clangd",
		"cssls",
		"emmet_language_server",
		"eslint",
		"gopls",
		"html",
		"jsonls",
		"lua_ls",
		"pyright",
		"rust_analyzer",
		"tsserver",
		"typst_lsp",
		-- "asm_lsp",
		-- "jedi_language_server",
	},
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"black",
		"clang-format",
		"prettier",
		"stylua",
	},
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason-lspconfig").setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({
			capabilities = capabilities,
			-- on_attach = on_attach,
		})
	end,
	["lua_ls"] = function()
		require("lspconfig").lua_ls.setup({
			capabilities = capabilities,
			-- on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
				},
			},
		})
	end,
	["rust_analyzer"] = function()
		require("rust-tools").setup({})
	end,
})
