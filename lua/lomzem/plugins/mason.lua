return {
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup()
		require("lomzem.lsp.lsp_mapping")

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)
		capabilities.textDocument.completion.completionItem.snippetSupport = false

		local lspconfig = require("lspconfig")

        local default_servers = {
            "gopls",
			"texlab",
			"zls",
		}

		for _, server in ipairs(default_servers) do
			lspconfig[server].setup({
				capabilities = capabilities,
			})
		end

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
				},
			},
		})

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

		lspconfig.rust_analyzer.setup({
			capabilities = capabilities,
			on_attach = function()
				require("rust-tools").setup({})
			end,
		})

		lspconfig["tinymist"].setup({
			capabilities = capabilities,
			offset_encoding = "utf-8",
		})
	end,
}
