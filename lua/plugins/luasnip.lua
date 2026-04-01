---@type LazySpec
return {
	"L3MON4D3/LuaSnip",
	event = "InsertEnter",
	build = "make install_jsregexp",
	-- dependencies = { "neotab.nvim" },
	config = function()
		local ls = require("luasnip")

		for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/lsp-setup/snippets/*.lua", true)) do
			local ok, err = loadfile(ft_path)
			if ok then
				ok()
			else
				vim.print("LuaSnip load error: " .. err .. " in " .. ft_path)
			end
		end

		ls.config.set_config({
			history = true,
			enable_autosnippets = true,
			update_events = { "TextChanged", "TextChangedI" },
		})
	end,
	keys = {
		{
			"<c-j>",
			function()
				require("luasnip").expand_or_jump()
			end,
			mode = "i",
		},
		{
			"<c-k>",
			function()
				require("luasnip").jumpable(-1)
			end,
			mode = "i",
		},
	},
}
