require("vimopts")
require("keymaps")

require("lazy_init")
require("lsp-setup")
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
