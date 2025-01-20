local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("html", {
	s({ trig = ".d", snippetType = "autosnippet" }, {
		t('<div class="'),
		i(1),
		t({ '">', "\t" }),
		i(0),
		t({ "", "</div>" }),
	}),

	s({ trig = ".bo", snippetType = "autosnippet" }, {
		t({ "<body>", "\t" }),
		i(0),
		t({ "", "</body>" }),
	}),

	s({ trig = ".ht", snippetType = "autosnippet" }, {
		t({ "<html>", "\t" }),
		i(0),
		t({ "", "</html>" }),
	}),

	s({ trig = ".h1", snippetType = "autosnippet" }, {
		t({ "<h1>", "\t" }),
		i(0),
		t({ "", "</h1>" }),
	}),
})

ls.add_snippets("typescriptreact", {
	s({ trig = ".exd", snippetType = "autosnippet" }, {
		t("export default function "),
		i(1),
		t("("),
		i(2),
		t({ ") {", "\t" }),
		i(3),
		t({ "", "}" }),
	}),
})

ls.filetype_extend("typescriptreact", { "html" })
