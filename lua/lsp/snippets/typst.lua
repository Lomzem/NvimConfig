local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta

local snippets = {}

local langs = {
	"python",
	"go",
	"rust",
	"ts",
	"c",
	"cpp",
	"sql",
	"lua",
	"bash",
}

for _, lang in ipairs(langs) do
	table.insert(
		snippets,
		s(
			lang,
			fmta(
				[[
```<>
<>
```<>
        ]],
				{ t(lang), i(1), i(0) }
			)
		)
	)
end

for level = 1, 6 do
	table.insert(snippets, s(string.format("h%d", level), t(string.rep("#", level) .. " ")))
end

table.insert(snippets, s("i", fmta("_<>_<>", { i(1), i(0) })))
table.insert(snippets, s("b", fmta("**<>**<>", { i(1), i(0) })))
table.insert(snippets, s("prose", fmt('#cite(<{}>, form: "prose"){}', { i(1), i(0) })))
table.insert(snippets, s("pm", t("plus.minus")))
table.insert(
	snippets,
	s(
		"/",
		fmta(
			[[
/*
* <>
*/
]],
			{ i(1) }
		)
	)
)

ls.add_snippets("typst", snippets)
