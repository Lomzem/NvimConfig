require("lomzem.vimopts")
require("lomzem.remaps")

require("lomzem.lazy")
require("lomzem.set-colorscheme")

-- load first harpoon on startup after everything
if vim.fn.argc() == 0 then
    local grapple = require("grapple")
    if grapple.exists({ index = 1 }) then
        grapple.select({ index = 1 })
        vim.cmd("normal zz")
    else
        require("oil").open()
    end
end
