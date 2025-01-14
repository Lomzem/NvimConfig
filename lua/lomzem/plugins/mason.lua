-- return {}
return {
	"williamboman/mason.nvim",
    build = ":MasonUpdate",
	dependencies = {
		{
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			opts = {
				auto_update = true,
				ensure_installed = {
					"clangd",
					"gopls",
					"lua-language-server",
					"prettier",
					"pyright",
					"ruff",
					"rust-analyzer",
					"stylua",
					"tailwindcss-language-server",
					"texlab",
					"tinymist", -- typst
					"zls",
				},
			},
		},
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup()
		require("lomzem.lsp.lsp_mapping")
		local lspconfig = require("lspconfig")

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)
		capabilities.textDocument.completion.completionItem.snippetSupport = false

		require("mason-lspconfig").setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = capabilities,
				})
			end,
			["lua_ls"] = function()
				lspconfig.lua_ls.setup({
					capabilities = capabilities,
					settings = {
						Lua = {
							diagnostics = { globals = { "vim" } },
						},
					},
				})
			end,
			["clangd"] = function()
				lspconfig.clangd.setup({
					capabilities = capabilities,
					cmd = {
						"clangd",
						"--background-index",
						"--clang-tidy",
						"--header-insertion=iwyu",
						"--completion-style=detailed",
						"--function-arg-placeholders",
						"--fallback-style=llvm",
					},
					init_options = {
						usePlaceholders = true,
						completeUnimported = true,
						clangdFileStatus = true,
					},
				})
			end,
			["rust_analyzer"] = function()
				lspconfig.rust_analyzer.setup({
					capabilities = capabilities,
					settings = {
						["rust-analyzer"] = {
							diagnostics = {
								enable = false,
							},
						},
					},
				})
			end,
			["bacon"] = function()
				lspconfig.bacon.setup({
					init_options = {
						updateOnSave = true,
						updateOnSaveWaitMillis = 1000,
						updateOnChange = false,
					},
				})
			end,
			["tinymist"] = function()
				lspconfig["tinymist"].setup({
					capabilities = capabilities,
					offset_encoding = "utf-8",
				})
			end,
		})
	end,
}
