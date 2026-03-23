local ls = require("luasnip")

-- local d = ls.dynamic_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local i = ls.insert_node
local s = ls.snippet
-- local sn = ls.snippet_node
local t = ls.text_node

ls.add_snippets("tex", {
	s("em", t({ "\\vspace{1em}", "" })),
	s("it", fmta("\\textit{<>}<>", { i(1), i(0) })),

	s(
		"tc",
		fmta(
			[[
\begin{tcolorbox}
    <>
\end{tcolorbox}
    ]],
			{ i(0) }
		)
	),
})
