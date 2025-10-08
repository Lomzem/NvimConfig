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

if vim.g.pid then
	-- print(vim.g.pid)
	local dap = require("dap")
	dap.run(dap.adapters.cppdgb)
end

---@type vim.lsp.Config
vim.lsp.config.clangd = {
	cmd = { "clangd", "--background-index" },
	settings = {
		Completion = {
			ArgumentLists = "Delimiters",
		},
	},
}
