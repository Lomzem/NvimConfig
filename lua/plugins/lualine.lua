return {
	"nvim-lualine/lualine.nvim",
	enabled = true,
	event = "VeryLazy",
	opts = {
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
	},
}
