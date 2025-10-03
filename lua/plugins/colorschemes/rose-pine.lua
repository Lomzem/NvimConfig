return {
	"rose-pine/neovim",
	name = "rose-pine",
	opts = {
		styles = {
			bold = false,
			italic = false,
		},
		before_highlight = function(group, highlight, palette)
			if highlight.undercurl then
				highlight.undercurl = false
				highlight.underline = true
			end
		end,
		-- disable_background = true,
	},
}
