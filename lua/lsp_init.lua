local installed_lsp = {
    "basedpyright",
    "clangd",
    "html",
    "jsonls",
    "lua_ls",
    "tsgo",
}

for _, lsp in ipairs(installed_lsp) do
    vim.lsp.enable(lsp)
end
