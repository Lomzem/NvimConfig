---@type LazySpec
return {
	"folke/flash.nvim",
	---@module "flash"
	---@type Flash.Config
	opts = {
		search = {
			-- regex search :)
			---@type Flash.Pattern.Mode
			mode = "search",
		},
		modes = {
			char = {
				label = { exclude = "hjklviardcCxDIA" },
				autohide = true,
				highlight = {
					backdrop = false,
				},
				char_actions = function(motion)
					return {
						[";"] = "next", -- set to `right` to always go right
						[","] = "prev", -- set to `left` to always go left
						-- clever-f style
						[motion:lower()] = nil,
						[motion:upper()] = nil,
					}
				end,
			},
		},
	},
	keys = {
		"f",
		"t",
		{
			"dr",
			mode = "n",
			function()
				local result = require("flash").treesitter()
				vim.cmd("norm Vd")
			end,
		},
		{
			"'",
			mode = { "n", "v", "x", "o" },
			function()
				require("flash").jump()
			end,
		},
	},
}
