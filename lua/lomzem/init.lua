require("lomzem.vimopts")
require("lomzem.remaps")

require("lomzem.lazy")
require("lomzem.set-colorscheme")

if vim.fn.argc() == 0 then -- no cmd line args
	local grapple = require("grapple")
	if grapple.exists({ index = 1 }) then
		grapple.select({ index = 1 })
		vim.cmd("norm zz")
	else
        vim.cmd("Oil")
	end
end
