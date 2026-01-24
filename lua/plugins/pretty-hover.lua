---@class HoverConfiguration
---@field line string[]? If one of the supplied strings is located as the first word in the line, the whole line is surrounded by `line.styler`
---@field listing string[]? These words will be substituted with `listing.styler`
---@field group table<string, string[]>? Table containing group name and its detectors. If this word is detected at the beginning of a line, the next word is surrounded by `group.styler`. The whole group is separated by a line and the first line contains the group name
---@field header string[]? List of strings. If this word is detected at the beginning of a line, the word is substituted by `header.styler`
---@field return_statement string[]? These words are substituted with **Return** (in bold)
---@field references string[]? If any word from this list is detected, the next word is surrounded by `references.styler[1]`. If this word is located in `line` section, the next word is surrounded by `references.styler[2]`
---@field hl table[]? Table of highlighting groups. You can define new groups by specifying at least two parameters: `color` and `detect`. Flag `line` is not mandatory, however by setting this flag you can ensure that the whole line is highlighted. When a detector from the table `detect` is found, the detector is made uppercase, omits the beginning tag and gets highlighted
---@field border "none"|"single"|"double"|"rounded"|"solid"|"shadow"? Sets the border of the hover window
---@field wrap boolean? Flag whether to wrap the text if the window is smaller. Otherwise the floating window is scrollable horizontally
---@field max_width number? Sets the maximum width of the window. If you don't want any limitation set to nil
---@field max_height number? Sets the maximum height of the window. If you don't want any limitation set to nil
---@field toggle boolean? Flag detecting whether you want to have the hover just as a toggle window or make the popup focusable
---@field multi_server boolean? Flag detecting whether you want to use the new multi lsp support or not

---@type HoverConfiguration
local opts = {
	border = "single",
}

---@type LazySpec
return {
	"Fildo7525/pretty_hover",
	opts = opts,
}
