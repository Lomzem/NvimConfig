local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

local snippets = {}

local keywords = {
	"alter",
	"and",
	"asc",
	"between",
	"by",
	"create",
	"database",
	"delete",
	"desc",
	"drop",
	"else",
	"end",
	"exists",
	"from",
	"group",
	"if",
	"in",
	"insert",
	"into",
	"like",
	"limit",
	"not",
	"offset",
	"or",
	"order",
	"select",
	"table",
	"update",
	"where",
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
