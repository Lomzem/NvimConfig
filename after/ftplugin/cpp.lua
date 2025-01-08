-- Check if Makefile exists
local makefile_path = vim.fn.fnamemodify(vim.fn.expand("%:p"), ":h") .. "/Makefile"

vim.keymap.set("n", "<leader>rl", "vip:norm 0xx<cr>{dj}kdd f")

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
		vim.cmd("term g++ % && ./a.out && rm ./a.out")
	end
end)

vim.keymap.set("n", "<leader>mc", function()
	local fzf_cmd = "fzf"
	fzf_cmd = fzf_cmd .. " --bind 'enter:become(echo 'consume:{}')'"
	fzf_cmd = fzf_cmd .. " --bind 'ctrl-x:become(echo 'vsplit:{}')'"

	local handle = io.popen("cppman -f : | " .. fzf_cmd .. " | cut -d ' ' -f 1")
	if handle == nil then
		print("Error: couldn't execute fzf")
		return
	end

	local choice = handle:read("*a")
	if choice == "" then
		return
	end

	local sep_index = string.find(choice, ":")
	local method = string.sub(choice, 1, sep_index - 1)
	local doc_page = string.sub(choice, sep_index + 1)

	local autocmd_group = vim.api.nvim_create_augroup("TermAutoClose", { clear = false })
	vim.api.nvim_create_autocmd("TermClose", {
		group = autocmd_group,
		callback = function()
			vim.cmd("bdelete")
			vim.api.nvim_del_augroup_by_id(autocmd_group)
		end,
	})

	if method == "consume" then
		vim.cmd("term cppman " .. doc_page)
		vim.cmd("startinsert")
	elseif method == "vsplit" then
		vim.fn.system("tmux split-window -h 'cppman " .. doc_page .. "; tmux kill-pane'")
	end

	handle:close()
end)

require("lomzem/lsp/snippets/cpp")
