local cwd = vim.fn.getcwd()
for _, file in ipairs(vim.v.oldfiles) do
	-- Check if the file path starts with the current directory
	if vim.fn.fnamemodify(file, ":p"):sub(1, #cwd) == cwd then
		vim.cmd("edit " .. file)
		return
	end
end
require("vimopts")
require("keymaps")

require("lsp-setup")

require("lazy_init")
require("autocmd")

--[[
On my machines, I have a file `lua/color.lua`
that calls `vim.cmd.colorscheme("<colorscheme>")`.

My current preferred colorscheme changes based on my mood,
so I chose not to commit it to git.
Fallback to `catppuccin-mocha` as default
--]]
local success = pcall(require, "color")
if not success then
	vim.cmd.colorscheme("catppuccin-mocha")
end

require("highlights")
