---@type LazySpec
return {
	"folke/flash.nvim",
	---@module "flash"
	---@type Flash.Config
	opts = {
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
		-- {
		-- 	"r",
		-- 	mode = "v",
		-- 	function()
		-- 		require("flash").treesitter()
		-- 		vim.cmd("norm V")
		-- 	end,
		-- 	desc = "Flash Treesitter",
		-- },
		{
			"dr",
			mode = "n",
			function()
				require("flash").treesitter()
				vim.cmd("norm Vd")
			end,
		},
		{
			"s",
			mode = { "n" },
			function()
				require("flash").jump()
			end,
		},
	},
}
