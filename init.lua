require("vimopts")
require("keymaps")

require("lsp.lsp_mapping")
require("lazy_init")
require("set-colorscheme")

for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/autocmd/*.lua", true)) do
	loadfile(ft_path)()
end
