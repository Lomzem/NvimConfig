vim.api.nvim_create_autocmd("FileType", {
	pattern = "kitty-scrollback",
	callback = function()
		vim.keymap.set("n", "y", "<Plug>(KsbNormalYank)", { buffer = true })
		vim.keymap.set("v", "y", "<Plug>(KsbVisualYank)", { buffer = true })
		-- Keep yy for line yank to clipboard
		vim.keymap.set("n", "yy", "<Plug>(KsbNormalYankLine)", { buffer = true })
	end,
})

---@type LazySpec
return {
	"mikesmithgh/kitty-scrollback.nvim",
	lazy = true,
	cmd = {
		"KittyScrollbackGenerateKittens",
		"KittyScrollbackCheckHealth",
		"KittyScrollbackGenerateCommandLineEditing",
	},
	event = { "User KittyScrollbackLaunch" },
	-- version = '*', -- latest stable version, may have breaking changes if major version changed
	-- version = '^6.0.0', -- pin major version, include fixes and features that do not have breaking changes
	opts = {},
}
