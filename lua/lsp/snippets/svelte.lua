local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local f = ls.function_node

ls.add_snippets("svelte", {
	s(
		"s",
		fmt(
			[[
<script lang="ts">
    {}
</script>
    ]],
			{ i(0) }
		)
	),
	s(
		"st",
		fmt(
			[[
<style>
    {}
</style>
    ]],
			{ i(0) }
		)
	),
})
