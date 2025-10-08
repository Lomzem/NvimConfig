return {
	"sainnhe/gruvbox-material",
	priority = 1000,
	config = function()
		---@type "hard" | "medium" | "soft"
		vim.g.gruvbox_material_background = "hard"

		---@type "material" | "mix" | "original"
		vim.g.gruvbox_material_foreground = "mix"
	end,
}
