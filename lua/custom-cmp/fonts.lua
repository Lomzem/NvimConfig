local source = {}

function source.new()
	local self = setmetatable({}, { __index = source })
	return self
end

---@param ctx blink.cmp.Context
function source:get_completions(ctx, callback)
	local items = {}
	local handle = io.popen("ghostty +list-fonts", "r")
	if not handle then
		return
	end
	local fonts = vim.split(handle:read("*a"), "\n")
	handle:close()
	for _, font in ipairs(fonts) do
		-- Skip empty lines
		if font:match("^%s*$") then
			goto continue
		end
		---@type blink.cmp.CompletionItem
		local item = {
			label = vim.trim(font),
			kind = require("blink.cmp.types").CompletionItemKind.Text,
			insertText = vim.trim(font),
			insertTextFormat = vim.lsp.protocol.InsertTextFormat.PlainText,
		}
		table.insert(items, item)
		::continue::
	end
	callback({
		items = items,
		is_incomplete_backward = false,
		is_incomplete_forward = false,
	})
	return function() end
end

return source
