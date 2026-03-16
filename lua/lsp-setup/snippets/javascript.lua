local ls = require("luasnip")
local s = ls.snippet
-- local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta

ls.add_snippets("javascript", {
	s("log", fmt("console.log({});", i(0))),
	s("type", fmta("/** @type{<>} */<>", { i(1), i(0) })),
	s("getElementById", fmt('document.getElementById("{}"){}', { i(1), i(0) })),
	s(
		"function",
		fmta(
			[[
function <>(<>) {
    <>
}
        ]],
			{ i(1), i(2), i(3) }
		)
	),
})

ls.filetype_extend("typescript", { "javascript" })
