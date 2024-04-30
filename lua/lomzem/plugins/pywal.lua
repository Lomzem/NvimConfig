return {
	"mbrea-c/wal-colors.nvim",
	config = function()
		vim.g.lushwal_configuration = {
			addons = {
				lualine = true,
			},
		}

		vim.cmd([[colorscheme mbc]]) -- activate the colorscheme
		local groups = {
			"Normal",
			"NormalNC",
			"TelescopeTitle",
			"TelescopeBorder",
			"TelescopeNormal",
			"TelescopeMatching",
			"TelescopeMultiIcon",
			"TelescopeSelection",
			"TelescopePreviewDate",
			"TelescopePreviewLine",
			"TelescopePreviewLink",
			"TelescopePreviewPipe",
			"TelescopePreviewRead",
			"TelescopePreviewSize",
			"TelescopePreviewUser",
			"TelescopePromptTitle",
			"TelescopePreviewBlock",
			"TelescopePreviewGroup",
			"TelescopePreviewMatch",
			"TelescopePreviewTitle",
			"TelescopePreviewWrite",
			"TelescopePromptBorder",
			"TelescopePromptNormal",
			"TelescopePromptPrefix",
			"TelescopeResultsClass",
			"TelescopeResultsField",
			"TelescopeResultsTitle",
			"TelescopePreviewBorder",
			"TelescopePreviewHyphen",
			"TelescopePreviewNormal",
			"TelescopePreviewSocket",
			"TelescopePreviewSticky",
			"TelescopePromptCounter",
			"TelescopeResultsBorder",
			"TelescopeResultsLineNr",
			"TelescopeResultsMethod",
			"TelescopeResultsNormal",
			"TelescopeResultsNumber",
			"TelescopeResultsStruct",
			"TelescopeMultiSelection",
			"TelescopePreviewCharDev",
			"TelescopePreviewExecute",
			"TelescopePreviewMessage",
			"TelescopeResultsComment",
			"TelescopeResultsDiffAdd",
			"TelescopeSelectionCaret",
			"TelescopeResultsConstant",
			"TelescopeResultsFunction",
			"TelescopeResultsOperator",
			"TelescopeResultsVariable",
			"TelescopePreviewDirectory",
			"TelescopeResultsDiffChange",
			"TelescopeResultsDiffDelete",
			"TelescopeResultsIdentifier",
			"TelescopeResultsDiffUntracked",
			"TelescopeResultsSpecialComment",
			"TelescopePreviewMessageFillchar",
		}
		for _, group in ipairs(groups) do
			vim.api.nvim_set_hl(0, group, { bg = "none" })
		end
	end,
	priority = 1000, -- recommended to ensure the colorscheme
	-- is loaded before other plugins
}
