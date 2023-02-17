local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
	return
end

local protocol = require("vim.lsp.protocol")

local on_attach = function(client, bufnr)
	-- Mappings.
	local opts = { noremap = true, silent = true, buffer = bufnr }
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	vim.keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	vim.keymap.set("n", "gd", "<Cmd>Lspsaga peek_definition<CR>", opts)
	vim.keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)
	vim.keymap.set("n", "ga", "<cmd>Lspsaga code_action<CR>", opts)
	vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", opts)
	vim.keymap.set("n", "<C-K>", "<Cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
	vim.keymap.set("n", "<C-J>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
	vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
	vim.keymap.set("n", "gsl", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
	vim.keymap.set("n", "gsc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
	vim.keymap.set("n", "go", "<cmd>LSoutlineToggle<CR>", opts)
end

protocol.CompletionItemKind = {
	"", -- Text
	"", -- Method
	"", -- Function
	"", -- Constructor
	"", -- Field
	"", -- Variable
	"", -- Class
	"ﰮ", -- Interface
	"", -- Module
	"", -- Property
	"", -- Unit
	"", -- Value
	"", -- Enum
	"", -- Keyword
	"﬌", -- Snippet
	"", -- Color
	"", -- File
	"", -- Reference
	"", -- Folder
	"", -- EnumMember
	"", -- Constant
	"", -- Struct
	"", -- Event
	"ﬦ", -- Operator
	"", -- TypeParameter
}

local capabilities = require("cmp_nvim_lsp").default_capabilities()

nvim_lsp.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "python" },
})

nvim_lsp.flow.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

nvim_lsp.tsserver.setup({
	on_attach = on_attach,
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescriptreact", "typescript", "typescript.jsx" },
	cmd = { "typescript-language-server", "--stdio" },
	capabilities = capabilities,
})

nvim_lsp.intelephense.setup({
	on_attach = on_attach,
	filetypes = { "php" },
	capabilities = capabilities,
})

nvim_lsp.vimls.setup({
	on_attach = on_attach,
	filetypes = { "vim" },
	capabilities = capabilities,
})

nvim_lsp.yamlls.setup({
	on_attach = on_attach,
	filetypes = { "yaml", "yaml.docker-compose", "yml" },
	capabilities = capabilities,
})

nvim_lsp.lua_ls.setup({
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
		},
	},
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	underline = true,
	update_in_insert = false,
	virtual_text = { spacing = 4, prefix = "●" },
	severity_sort = true,
})

-- Diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
	},
	update_in_insert = true,
	float = {
		source = "always", -- Or "if_many"
	},
})
