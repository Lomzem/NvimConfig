local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
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

ls.add_snippets("markdown", snippets)
