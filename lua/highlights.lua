vim.cmd.highlight("LineNr", "guibg=none")

local groups = {
	"FloatBorder",
	"NonText",
	"Normal",
	"NormalNC",
	"SignColumn",
	"StatusLine",
	"StatusLineNC",
	"NormalFloat",
}

for _, group in ipairs(groups) do
	vim.api.nvim_set_hl(0, group, {
		bg = "none",
	})
end
