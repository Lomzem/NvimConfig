local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("python", {
	s(
		"inm",
		fmt(
			[[
def main():
    {}

if __name__ == "__main__":
    main()
]],
			{ i(0, "pass") }
		)
	),
})
