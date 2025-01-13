require("lomzem.vimopts")
require("lomzem.remaps")

require("lomzem.lazy")
-- require("lomzem.lsp.lsp")
-- require("lomzem.lsp.mason")
-- require("lomzem.set-colorscheme")

-- load first harpoon on startup after everything
if vim.fn.argc() == 0 then
	require("grapple").select({ index = 1 })
	vim.cmd("normal zz")
end
