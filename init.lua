require("vimopts")
require("keymaps")

require("lsp.lsp_mapping")
require("lazy_init")
require("autocmd")

local success = pcall(require, "set-colorscheme")
if not success then
	vim.cmd.colorscheme("catppuccin-mocha")
end

for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/autocmd/*.lua", true)) do
	loadfile(ft_path)()
end
