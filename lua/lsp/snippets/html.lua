local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local f = ls.function_node

local to_camel_case = function(text)
	-- Handle empty input
	if text == "" then
		return ""
	end
	-- Convert first character to uppercase and remove any spaces/underscores
	local camel = text:gsub("(%l)(%w*)", function(first, rest)
		return first:upper() .. rest
	end)
	return camel
end

local html_snippets = {}

local html_tags = {
	"a",
	"body",
	"button",
	"div",
	"form",
	"h1",
	"h2",
	"h3",
	"h4",
	"h5",
	"h6",
	"head",
	"html",
	"img",
	"input",
	"label",
	"li",
	"link",
	"main",
	"meta",
	"p",
	"script",
	"section",
	"span",
	"style",
	"table",
	"tbody",
	"td",
	"tfoot",
	"th",
	"thead",
	"tr",
	"ul",
}

for _, tag in ipairs(html_tags) do
	table.insert(
		html_snippets,
		s(
			tag,
			fmt(
				[[
<{1}>
  {2}
</{1}>
    ]],
				{
					t(tag),
					i(1),
				}
			)
		)
	)

	table.insert(
		html_snippets,
		s(
			tag .. ".",
			fmt(
				[[
<{1} className="{2}">
  {3}
</{1}>
    ]],
				{
					t(tag),
					i(1),
					i(2),
				}
			)
		)
	)
end

ls.add_snippets("html", html_snippets)

ls.add_snippets("typescriptreact", {
	s("exd", {
		t("export default function "),
		i(1),
		t("("),
		i(2),
		t({ ") {", "\t" }),
		i(3),
		t({ "", "}" }),
	}),

	s("i", {
		t("import { "),
		i(0),
		t(" }"),
	}),

	s("cn", {
		t('className="'),
		i(0),
		t('"'),
	}),

	s(
		"ar",
		fmta(
			[[
() =>> {
    <>
}
    ]],
			{ i(0) }
		)
	),

	s(
		"arp",
		fmta(
			[[
(<>) =>> {
    <>
}
    ]],
			{ i(1), i(0) }
		)
	),

	s(
		"uses",
		fmta(
			[[
const [<>, set<>] = useState(<>);
        ]],
			{
				i(1),
				f(function(args)
					return to_camel_case(args[1][1])
				end, { 1 }),
				i(0),
			}
		)
	),

	s(
		"fn",
		fmta(
			[[
function <>() {
    <>
}
        ]],
			{ i(1), i(0) }
		)
	),

	s(
		"fnp",
		fmta(
			[[
function <>(<>) {
    <>
                ]],
			{ i(1), i(2), i(0) }
		)
	),
})

ls.filetype_extend("typescriptreact", { "html" })
ls.filetype_extend("svelte", { "html" })
