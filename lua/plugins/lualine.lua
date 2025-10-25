return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>la",
			function()
				local lualine = require("lualine")
				if vim.g.lualine_enabled == 0 then
					lualine.hide({
						place = { "statusline" },
						unhide = true,
					})
					vim.g.lualine_enabled = 1
				else
					lualine.hide({
						place = { "statusline" },
						unhide = false,
					})
					vim.g.lualine_enabled = 0
				end
			end,
		},
	},
	config = function()
		local opts = {
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				-- section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 200,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				-- lualine_a = { "mode" },
				lualine_a = {
					{
						"mode",
						-- separator = { left = "" },
					},
				},
				lualine_b = { "diagnostics" },
				lualine_c = { { "filename", path = 1 } },
				lualine_x = { "" },
				-- lualine_z = { "location" },
				lualine_z = {
					{
						"location",
						-- separator = { right = "" },
					},
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		}
		local lualine = require("lualine")
		lualine.setup(opts)
		-- vim.g.lualine_enabled = 0
		-- lualine.hide({
		-- 	place = { "statusline" },
		-- 	unhide = false,
		-- })
	end,
}
