----------------------------------------------------------------------
-- Neovim Settings
----------------------------------------------------------------------
vim.cmd("autocmd!")
----------------------------------------------------------------------
-- Neovim Settings Encoding
----------------------------------------------------------------------
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
----------------------------------------------------------------------
-- Neovim Settings Base
----------------------------------------------------------------------
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = "fish"
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand = "split"
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.wrap = false
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})
-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })
vim.opt.list = true
vim.opt.listchars:append("tab:▸ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»")
vim.opt.listchars:append("eol:↴")
vim.opt.guifont = "JetBrainsMono Nerd Font"
vim.opt.hidden = true
vim.opt.history = 100
vim.lazyredraw = true
----------------------------------------------------------------------
-- Neovim Settings Highlights
----------------------------------------------------------------------
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = "pum"
vim.opt.pumblend = 5
vim.opt.background = "dark"
