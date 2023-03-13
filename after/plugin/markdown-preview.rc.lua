local status, markdown = pcall(require, "markdown-preview")

if not status then
	print("markdown preview is not installed")
end

vim.keymap.set("n", "mp", ":MarkdownPreview<cr>")
vim.keymap.set("n", "mps", ":MarkdownPreviewStop<cr>")
vim.keymap.set("n", "mpt", ":MarkdownPreviewToggle<cr>")
