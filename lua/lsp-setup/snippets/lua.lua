local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

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
})
