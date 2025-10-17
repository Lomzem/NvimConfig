vim.keymap.set("n", "}", "/^\\w<cr>zz", {
	buffer = 0,
})
vim.keymap.set("n", "{", "?^\\w<cr>zz", {
	buffer = 0,
})

local sections = {}
local file = vim.api.nvim_buf_get_name(0)
for lineno, line in ipairs(vim.api.nvim_buf_get_lines(0, 0, -1, false)) do
	local section = line:match("^%w[%w%s]+")
	if not section then
		goto continue
	end
	local section_item = {
		text = section,
		pos = { lineno, 1 },
		end_pos = { lineno, string.len(section) },
		file = file,
	}
	table.insert(sections, section_item)
	::continue::
end

---@class (exact) ManFlag
---@field text string
---@field pos {[1]:number, [2]:number}
---@field end_pos {[1]:number, [2]:number}

---@type ManFlag[]
local flags = {}

local file = vim.api.nvim_buf_get_name(0)
for lineno, line in ipairs(vim.api.nvim_buf_get_lines(0, 0, -1, false)) do
	if not string.find(line, "^%s%s%s%s%s%s%s%-") then
		goto continue
	end

	local start_idx = 1
	while true do
		local _start, _end = string.find(line, "%-%-[%w-]+", start_idx)
		if not _start then
			break
		end
		---@type ManFlag
		local flag = {
			text = line:sub(_start, _end),
			pos = { lineno, _start - 1 },
			end_pos = { lineno, _end },
			file = file,
		}
		table.insert(flags, flag)
		start_idx = _end + 1
	end

	start_idx = 1
	while true do
		local _start, _end = string.find(line, "%s%-%w[%w-]*", start_idx)
		if not _start then
			break
		end
		---@type ManFlag
		local flag = {
			text = line:sub(_start + 1, _end),
			pos = { lineno, _start },
			end_pos = { lineno, _end },
			file = file,
		}
		table.insert(flags, flag)
		start_idx = _end + 1
	end
	::continue::
end

vim.keymap.set("n", "gm", function()
	Snacks.picker.pick({
		items = flags,
		format = "text",
	})
end)

vim.keymap.set("n", "gM", function()
	Snacks.picker.pick({
		items = sections,
		format = "text",
	})
end)
