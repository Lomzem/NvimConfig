local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

local snippets = {}

local keywords = {
	"select",
	"from",
	"where",
	"group",
	"by",
	"order",
	"limit",
	"offset",
	"insert",
	"update",
	"delete",
	"create",
	"alter",
	"drop",
	"table",
	"database",
	"if",
	"else",
	"end",
	"and",
	"or",
	"not",
	"between",
	"like",
	"in",
	"exists",
	"desc",
	"asc",
}

for _, keyword in ipairs(keywords) do
	local keyword_upper = string.upper(keyword)
	table.insert(
		snippets,
		s({
			trig = keyword .. " ",
			snippetType = "autosnippet",
		}, t(keyword_upper .. " "))
	)
end

table.insert(
	snippets,
	s(
		"sf",
		fmta(
			[[
SELECT <>
FROM <>;
            ]],
			{ i(1, "*"), i(2) }
		)
	)
)

table.insert(
	snippets,
	s(
		"sfw",
		fmta(
			[[
SELECT <>
FROM <>
WHERE <>;
            ]],
			{ i(1, "*"), i(2), i(3) }
		)
	)
)

table.insert(snippets, s("gb", fmta("GROUP BY <>", { i(1) })))

table.insert(
	snippets,
	s({
		trig = "select ",
		snippetType = "autosnippet",
	}, t("SELECT "))
)

ls.add_snippets("sql", snippets)
