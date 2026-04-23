local installed_lsp = {
	"basedpyright",
	"clangd",
	"cssls",
	"html",
	"jsonls",
	"lua_ls",
	"svelte",
	"tailwindcss",
	"texlab",
	"tinymist",
	"tombi",
	"tsgo",
}

for _, lsp in ipairs(installed_lsp) do
	vim.lsp.enable(lsp)
end
