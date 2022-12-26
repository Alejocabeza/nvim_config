local status, packer = pcall(require, "packer")

if not status then
	print("packer is not installed")
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim") -- Packer
	use("nvim-lua/plenary.nvim") -- Common Utilites
	use("szw/vim-maximizer") -- Maximizer panel
	use("lukas-reineke/indent-blankline.nvim") -- Line Indent
	use("morhetz/gruvbox") -- gruvbox
	use("mbbill/undotree")
	use({ "mg979/vim-visual-multi", branch = "master" }) -- Cursor Multi Edit for Neovim
	use("onsails/lspkind-nvim") -- vscode-like pictograms
	use("hoob3rt/lualine.nvim") -- StatusLine
	use("akinsho/nvim-bufferline.lua") -- BufferLine
	use("kyazdani42/nvim-web-devicons") -- File icons
	use("MunifTanjim/prettier.nvim") -- Prettier plugin for Neovim's built-in LSP client
	use("MunifTanjim/eslint.nvim") -- Eslint plugin for neovim
	use("numToStr/Comment.nvim") -- Comment Plugin for neovim
	use("gpanders/editorconfig.nvim") -- Integration of EditorConfig for Neovim
	-- Telescope
	use("nvim-telescope/telescope.nvim") -- telescope
	use("nvim-telescope/telescope-file-browser.nvim") -- browser file in telescope
	-- LSP Support
	use("neovim/nvim-lspconfig")
	use("glepnir/lspsaga.nvim")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	-- Autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	-- Snippetsi
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")
	-- Treesitter
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" }) -- Syntax
	use("nvim-treesitter/nvim-treesitter-context") -- syntax context
	use("nvim-treesitter/nvim-tree-docs") -- syntax docs
	use("windwp/nvim-ts-autotag") -- Completion Of Tags
	use("windwp/nvim-autopairs") -- Completion Of Pairs
	use("p00f/nvim-ts-rainbow") -- Color of pairs
	-- LSP-null
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("jayp0521/mason-null-ls.nvim") -- Use Neovim as a Built-in for LSP
	-- GIT
	use("lewis6991/gitsigns.nvim")
	use("dinhhuy258/git.nvim") -- For git blame & browse
	-- File Explorer
	use("nvim-neo-tree/neo-tree.nvim")
	use("MunifTanjim/nui.nvim")
end)
