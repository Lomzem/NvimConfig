local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta

-- local extras = require("luasnip.extras")
-- local rep = extras.rep

ls.add_snippets("cpp", {
	s({
		trig = "npt",
		snippetType = "autosnippet",
		name = "nullptr",
		dscr = "nullptr",
	}, {
		t("nullptr"),
	}),

	s({
		trig = "u",
		name = "using namespace std",
		dscr = "using namespace std",
	}, {
		t("using namespace std;"),
	}),

	s("/", fmt([[/* {} */{}]], { i(1), i(0) })),
	s("i", fmt([[#include <{}>{}]], { i(1), i(0) })),
	s(
		"for",
		fmta(
			[[
for (auto i = 0; i << <>.size(); i++) {
    <>
}]],
			{ i(1), i(0) }
		)
	),
	s(
		"forca",
		fmta(
			[[for (const auto &<> : <>) {
    <>
}]],
			{ i(1), i(2), i(0) }
		)
	),
})
