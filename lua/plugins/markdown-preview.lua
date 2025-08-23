return {
	"iamcco/markdown-preview.nvim",
	-- enabled = false,
	lazy = true,
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = "markdown",
	build = "cd app && pnpm install",
}
