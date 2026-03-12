-- Auto install based on filetype
vim.api.nvim_create_autocmd({ "Filetype" }, {
	callback = function(event)
		local ok, nvim_treesitter = pcall(require, "nvim-treesitter")
		if not ok then
			return
		end

		local parsers = require("nvim-treesitter.parsers")
		if not parsers[event.match] then
			return
		end

		local lang = vim.treesitter.language.get_lang(vim.bo[event.buf].ft)
		nvim_treesitter.install({ lang }):await(function(err)
			if not err then
				pcall(vim.treesitter.start, event.buf)
			end
		end)
	end,
})

---@type LazySpec[]
return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
	},
}
