local status, mason_lsp = pcall(require, "mason-lspconfig")
if not status then
	return
end

mason_lsp.setup({
	ensure_installed = {
		"bashls",
		"diagnosticls",
		"dockerls",
		"intelephense",
		"tsserver",
		"vimls",
		"yamlls",
		"sumneko_lua",
		"pyright",
	},
})
