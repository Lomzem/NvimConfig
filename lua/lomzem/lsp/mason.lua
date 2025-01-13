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

-- require("mason-lspconfig").setup_handlers({
-- 	function(server_name)
-- 		require("lspconfig")[server_name].setup({
-- 			capabilities = capabilities,
-- 		})
-- 	end,
-- 	["clangd"] = function()
-- 		require("lspconfig").clangd.setup({
-- 			capabilities = capabilities,
-- 			cmd = {
-- 				"clangd",
-- 				"--background-index",
-- 				"--clang-tidy",
-- 				"--header-insertion=iwyu",
-- 				"--completion-style=detailed",
-- 				"--function-arg-placeholders",
-- 				"--fallback-style=llvm",
-- 			},
-- 			init_options = {
-- 				usePlaceholders = true,
-- 				completeUnimported = true,
-- 				clangdFileStatus = true,
-- 			},
-- 		})
-- 	end,
-- 	["lua_ls"] = function()
-- 		require("lspconfig").lua_ls.setup({
-- 			capabilities = capabilities,
-- 			settings = {
-- 				Lua = {
-- 					diagnostics = { globals = { "vim" } },
-- 				},
-- 			},
-- 		})
-- 	end,
-- 	["rust_analyzer"] = function()
-- 		require("lspconfig").rust_analyzer.setup({
-- 			capabilities = capabilities,
-- 		})
-- 		-- require("rust-tools").setup({})
-- 	end,
-- 	["tinymist"] = function()
-- 		require("lspconfig")["tinymist"].setup({
-- 			capabilities = capabilities,
-- 			offset_encoding = "utf-8",
-- 		})
-- 	end,
-- })
