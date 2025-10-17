vim.keymap.set("n", "}", "/^\\w<cr>zz", {
	buffer = 0,
})
vim.keymap.set("n", "{", "?^\\w<cr>zz", {
	buffer = 0,
})

---@class (exact) ManFlag
---@field text string
---@field pos {[1]:number, [2]:number}
---@field end_pos {[1]:number, [2]:number}

---@type ManFlag[]
local flags = {}

local file = vim.api.nvim_buf_get_name(0)
for lineno, line in ipairs(vim.api.nvim_buf_get_lines(0, 0, -1, false)) do
	local flag_str = string.match(line, "^%s*(%-%-*[%w-]+)")
	if flag_str then
		local _start, _end = string.find(line, flag_str)
		if not _start then
			goto continue
		end
		---@type ManFlag
		local flag = {
			text = line:sub(_start, _end),
			pos = { lineno, _start - 1 },
			end_pos = { lineno, _end },
			file = file,
		}
		table.insert(flags, flag)
	end
	for match_text in string.gmatch(line, ", (%-%-[%w-]+)") do
		local _start, _end = string.find(line, match_text)
		if not _start then
			goto continue
		end
		---@type ManFlag
		local flag = {
			text = line:sub(_start, _end),
			pos = { lineno, _start - 1 },
			end_pos = { lineno, _end },
			file = file,
		}
		table.insert(flags, flag)
	end
	::continue::
end

-- for i = 1, 100 do
-- 	local item = {
-- 		text = "line" .. i,
-- 		pos = { i, 1 },
-- 		end_pos = { i, 2 },
-- 		file = file,
-- 	}
-- 	table.insert(flags, item)
-- end

vim.keymap.set("n", "<leader>gm", function()
	Snacks.picker.pick({
		items = flags,
		format = "text",
	})
end)
