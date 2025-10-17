local source = {}

function source.new()
	local self = setmetatable({}, { __index = source })
	return self
end

---@param ctx blink.cmp.Context
function source:get_completions(ctx, callback)
	local items = {}
	local handle =
		io.popen("fc-list | cut -d ' ' -f 2- | cut -d , -f 1 | cut -d : -f 1 | rg 'Mono$' | sort | uniq", "r")
	if not handle then
		return
	end
	local fonts = vim.split(handle:read("*a"), "\n")
	handle:close()
	for _, font in ipairs(fonts) do
		-- Remove "Mono"
		font = font:sub(1, #font - #" Mono")
		---@type blink.cmp.CompletionItem
		local item = {
			label = font,
			kind = require("blink.cmp.types").CompletionItemKind.Text,
			insertText = font,
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
