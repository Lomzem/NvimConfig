require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		-- "asm_lsp",
		"cssls",
		"clangd",
		"eslint",
		"gopls",
		"html",
		-- "jedi_language_server",
		"jsonls",
		"lua_ls",
		"rust_analyzer",
		"texlab",
		"tsserver",
		"typst_lsp",
		"pyright",
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
