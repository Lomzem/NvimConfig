vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local opts = { buffer = ev.buf }
		local client = vim.lsp.get_client_by_id(ev.data.client_id)

		if client and client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
			-- vim.lsp.inlay_hint.enable()
			vim.keymap.set("n", "<leader>pt", function()
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
			end, opts)
		end

		vim.opt.signcolumn = "yes"
		vim.diagnostic.config({
			virtual_text = false,
			update_in_insert = false,
		})

		vim.keymap.set("n", "K", function()
			---@type HoverConfiguration
			local hover_config = {
				border = "single",
			}
			require("pretty_hover").hover()
		end, opts)

		vim.keymap.set("n", "<m-p>", function()
			vim.diagnostic.jump({ count = -1, float = true })
		end)
		vim.keymap.set("n", "<m-n>", function()
			vim.diagnostic.jump({ count = 1, float = true })
		end)

		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
		vim.keymap.set("n", "U", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	end,
})
