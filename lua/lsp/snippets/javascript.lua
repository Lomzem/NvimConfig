local ls = require("luasnip")
local s = ls.snippet
-- local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
-- local fmta = require("luasnip.extras.fmt").fmta

ls.add_snippets("javascript", {
	s("log", fmt("console.log({});", i(0))),
})

ls.filetype_extend("typescript", { "javascript" })
