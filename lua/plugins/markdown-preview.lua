return {
	"iamcco/markdown-preview.nvim",
	-- enabled = false,
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = "markdown",
	build = "cd app && pnpm install",
}
