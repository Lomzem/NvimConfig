local installed_lsp = {
	"basedpyright",
	"clangd",
	"svelte",
	"html",
	"tailwindcss",
	"jsonls",
	"lua_ls",
	"texlab",
	"tinymist",
	"tombi",
	"tsgo",
}

for _, lsp in ipairs(installed_lsp) do
	vim.lsp.enable(lsp)
end
