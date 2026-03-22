local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

---@param name string
local function autosnip(name, nodes)
	return s({
		trig = name,
		snippetType = "autosnippet",
		name = name,
		dscr = name,
	}, nodes)
end

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
