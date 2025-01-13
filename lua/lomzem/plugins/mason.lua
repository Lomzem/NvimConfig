return {
	"williamboman/mason.nvim",
	config = function()
		-- require("lomzem.lsp.mason")
		require("mason").setup()
		-- require("mason-lspconfig").setup({})

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)
		-- capabilities.textDocument.completion.completionItem.snippetSupport = false

		require("lspconfig").lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
				},
			},
		})
	end,
	-- dependencies = {
	-- 	"williamboman/mason-lspconfig.nvim",
	-- 	{
	-- 		"WhoIsSethDaniel/mason-tool-installer.nvim",
	-- 		opts = {
	-- 			auto_update = false,
	-- 			ensure_installed = {
	-- 				"clang-format",
	-- 				"clangd",
	-- 				"cpptools",
	-- 				"cssls",
	-- 				"emmet_language_server",
	-- 				"eslint",
	-- 				"gopls",
	-- 				"html",
	-- 				"jsonls",
	-- 				"lua_ls",
	-- 				"prettier",
	-- 				"pyright",
	-- 				"ruff",
	-- 				"rust_analyzer",
	-- 				"stylua",
	-- 				"tailwindcss",
	-- 				"texlab",
	-- 				"tinymist",
	--                    "zls",
	-- 			},
	-- 		},
	-- 	},
	-- },
}
-- return {}
