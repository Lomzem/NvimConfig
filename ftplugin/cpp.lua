-- Check if Makefile exists
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

if file_exists(makefile_path) then
	vim.keymap.set("n", "<leader>ru", ":w<cr>:term make<cr>")
else
	vim.keymap.set("n", "<leader>ru", ":w<cr>:term g++ % && ./a.out && rm ./a.out<cr>")
end

require("lomzem/lsp/snippets/cpp")
