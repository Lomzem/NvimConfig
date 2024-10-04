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
		-- "ts_ls",
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

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

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
			capabilities = capabilities,
		})
	end,
	["rust_analyzer"] = function()
		require("rust-tools").setup({})
	end,
})
