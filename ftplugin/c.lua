local makefile_path = vim.fn.fnamemodify(vim.fn.expand("%:p"), ":h") .. "/Makefile"

local function file_exists(name)
	local f = io.open(name, "r")
	if f ~= nil then
		io.close(f)
		return true
	else
		return false
	end
end

vim.keymap.set("n", "<leader>ru", function()
	if file_exists(makefile_path) then
		vim.cmd("w")
		vim.cmd("term make")
	else
		vim.cmd("w")
		vim.cmd("term gcc % && ./a.out && rm ./a.out")
	end
end)

require("lomzem/lsp/snippets/c")
