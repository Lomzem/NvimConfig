local ls = require("luasnip")

-- require("luasnip.loaders.from_vscode").lazy_load()
require("lomzem/lsp/snippets/all")

ls.config.set_config({
	history = true,
	enable_autosnippets = true,
})

vim.keymap.set({ "i", "s" }, "<C-f>", function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-b>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end, { silent = true })

-- vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/lomzem/lsp/snippets.lua<CR>")
