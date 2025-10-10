local source = {}

function source.new()
	local self = setmetatable({}, { __index = source })
	return self
end

---@param ctx blink.cmp.Context
function source:get_completions(ctx, callback)
	local items = {}
	local colors = vim.fn.getcompletion("", "color")
	for _, color in ipairs(colors) do
		---@type blink.cmp.CompletionItem
		local item = {
			label = color,
			kind = require("blink.cmp.types").CompletionItemKind.Text,
			insertText = color,
			insertTextFormat = vim.lsp.protocol.InsertTextFormat.PlainText,
		}
		table.insert(items, item)
	end
	callback({
		items = items,
		is_incomplete_backward = false,
		is_incomplete_forward = false,
	})
	return function() end
end

return source
