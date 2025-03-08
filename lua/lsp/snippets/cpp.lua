local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
-- local i = ls.insert_node

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
})
