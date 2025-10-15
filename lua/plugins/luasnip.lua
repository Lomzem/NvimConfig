return {
	"L3MON4D3/LuaSnip",
	event = "InsertEnter",
	build = "make install_jsregexp",
	-- dependencies = "rafamadriz/friendly-snippets",
	config = function()
		local ls = require("luasnip")

		-- require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/lua/lsp" })

		for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/lsp/snippets/*.lua", true)) do
			loadfile(ft_path)()
		end

		ls.config.set_config({
			history = true,
			enable_autosnippets = true,
			update_events = { "TextChanged", "TextChangedI" },
		})

		vim.keymap.set({ "i", "s" }, "<c-n>", function()
			if ls.expand_or_jumpable() then
				ls.expand_or_jump()
			end
		end, { silent = true })
		vim.keymap.set({ "i", "s" }, "<c-p>", function()
			if ls.jumpable(-1) then
				ls.jump(-1)
			end
		end, { silent = true })
		-- vim.keymap.set("i", "<a-p>", function()
		-- 	if ls.choice_active() then
		-- 		ls.change_choice(1)
		-- 	end
		-- end)
	end,
}
