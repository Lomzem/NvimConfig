local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
-- local c = ls.choice_node

ls.add_snippets("all", {

	s({ trig = ";dm", snippetType = "autosnippet", name = "Dark Mode", dscr = "Dark Mode" }, {
		t({ '#set page(fill: rgb("#26233a"))', '#set text(fill: rgb("#e0def4"))', "" }),
	}),

	s({ trig = ";cb", snippetType = "autosnippet", name = "Code Block", dscr = "Code Block" }, {
		t("```"),
		i(1),
		t({ "", "" }),
		i(0),
		t({ "", "```" }),
	}),

	s({ trig = "pycb", snippetType = "autosnippet", name = "Python Code Block", dscr = "Python Code Block" }, {
		t("```python"),
		t({ "", "" }),
		i(0),
		t({ "", "```" }),
	}),

	s({
		trig = "asmcb",
		snippetType = "autosnippet",
		name = "Assembly Code Block",
		dscr = "Assembly Code Block",
	}, {
		t("```asm"),
		t({ "", "" }),
		i(0),
		t({ "", "```" }),
	}),

	s({ trig = ";h1", snippetType = "autosnippet", name = "Heading 1", dscr = "Heading 1" }, {
		t('#heading(level: 1, "'),
		i(1),
		t('")'),
		i(0),
	}),

	s({ trig = ";h2", snippetType = "autosnippet", name = "Heading 2", dscr = "Heading 2" }, {
		t('#heading(level: 2, "'),
		i(1),
		t('")'),
		i(0),
	}),

	s({ trig = ";h3", snippetType = "autosnippet", name = "Heading 3", dscr = "Heading 3" }, {
		t('#heading(level: 3, "'),
		i(1),
		t('")'),
		i(0),
	}),

	s({ trig = ";math", snippetType = "autosnippet" }, {
		t({ "#show math.equation: math.display", "" }),
	}),

	s({ trig = ";e", snippetType = "autosnippet", name = "Display Eqn", dscr = "Display Eqn" }, {
		t("$"),
		i(1),
		t("$"),
		i(0),
	}),

	s({ trig = ";a", snippetType = "autosnippet", name = "arrow()", dscr = "arrow()" }, {
		t("arrow("),
		i(0),
		t(")"),
	}),

	s({ trig = ";f", snippetType = "autosnippet", name = "frac()", dscr = "frac()" }, {
		t("frac("),
		i(0),
		t(")"),
	}),

	s({ trig = ";ul", snippetType = "autosnippet", name = "#underline()", dscr = "#underline()" }, {
		t('#underline("'),
		i(1),
		t('")'),
		i(0),
	}),

	-- GREEKS
	s({ trig = "delta", snippetType = "autosnippet", name = "Delta", dscr = "Delta" }, {
		t({ "Delta" }),
	}),

	s({ trig = "-b", snippetType = "autosnippet" }, {
		t({ "Beta" }),
	}),

	s({ trig = "-e", snippetType = "autosnippet" }, {
		t({ "epsilon" }),
	}),

	s({ trig = "-d", snippetType = "autosnippet" }, {
		t({ "Delta" }),
	}),

	s({ trig = "-p", snippetType = "autosnippet" }, {
		t({ "Phi" }),
	}),
})
