return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = {
		modes = {
			char = {
				label = { exclude = "hjklviardcCxDIA" },
				highlight = { backdrop = false },
				char_actions = function(motion)
					return {
						[";"] = "next", -- set to `right` to always go right
						[","] = "prev", -- set to `left` to always go left
						-- clever-f style
						[motion:lower()] = nil,
						[motion:upper()] = nil,
						-- jump2d style: same case goes next, opposite case goes prev
						-- [motion] = "next",
						-- [motion:match("%l") and motion:upper() or motion:lower()] = "prev",
					}
				end,
			},
		},
	},
	keys = {
		{
			"'",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump({
					search = { mode = "search", max_length = 0 },
					pattern = "\\<\\w",
				})
			end,
			desc = "Flash",
		},
		{
			"<leader>k",
			mode = { "n", "x", "o" },
			function()
				-- line jump
				require("flash").jump({
					search = { mode = "search", max_length = 0 },
					label = {
						after = { 0, 0 },
						style = "overlay",
					},
					pattern = "^\\s*.",
				})
			end,
			desc = "Flash",
		},
		{
			"r",
			mode = "v",
			function()
				require("flash").treesitter()
			end,
			desc = "Flash Treesitter",
		},
	},
}
