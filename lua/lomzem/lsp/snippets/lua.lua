local ls = require("luasnip")
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node
local fmt = require('luasnip.extras.fmt').fmt

ls.add_snippets('lua', {
    snip({ trig = 'keymap', snippetType = 'autosnippet', name = 'Nvim Keymap', dscr = 'Make a new keymap for nvim' }, {
        text('vim.keymap.set("'),
        insert(1, 'n'),
        text('", "'),
        insert(2, "hotkey"),
        text('", "'),
        insert(0, "action"),
        text('")'),
    }),
})
