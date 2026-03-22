local installed_lsp = {
	"basedpyright",
	"clangd",
	"html",
	"jsonls",
	"lua_ls",
	"tsgo",
	"texlab",
}

for _, lsp in ipairs(installed_lsp) do
	vim.lsp.enable(lsp)
end
