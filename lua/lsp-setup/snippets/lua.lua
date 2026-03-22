local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

local autosnip = require("lsp-setup.snippets.snip_utils").autosnip

ls.add_snippets("lua", {
	s(
		"lazy",
		fmta(
			[[
---@type LazySpec
return {
    "<>",
    opts = {<>},
}
    ]],
			{ i(1), i(0) }
		)
	),

	s(
		"func",
		fmta(
			[[
function <>(<>)
    <>
end
        ]],
			{ i(1), i(2), i(0) }
		)
	),

	autosnip(
		"if ",
		fmta(
			[[
if <> then
    <>
end
    ]],
			{ i(1), i(0) }
		)
	),
})
