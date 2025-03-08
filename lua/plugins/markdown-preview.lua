return {
	"iamcco/markdown-preview.nvim",
	lazy = true,
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = "markdown",
	build = "cd app && yarn install",
}
