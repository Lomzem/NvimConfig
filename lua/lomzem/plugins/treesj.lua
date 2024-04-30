return {
	"https://github.com/Wansmer/treesj",
	keys = { "<space>j" },
	config = function()
		require("treesj").setup({
			use_default_keymaps = false,
		})

		vim.keymap.set("n", "<leader>j", require("treesj").toggle)
	end,
}
