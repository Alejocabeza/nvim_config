local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("n", "x", '"_x')
keymap.set("n", ",", ":Ex<CR>")

-- Copy a line
keymap.set("n", "tt", ":t .<CR>")

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New Tab
keymap.set("n", "te", ":tabedit<CR>", { silent = true })

-- Split Window
keymap.set("n", "ss", ":split<Return><C-w>w", { silent = true })
keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })

-- Move Window
keymap.set("", "<Leader>h", "<C-w>h")
keymap.set("", "<Leader>k", "<C-w>k")
keymap.set("", "<Leader>j", "<C-w>j")
keymap.set("", "<Leader>l", "<C-w>l")

-- Resize Window
keymap.set("n", "<right>", "<C-w><")
keymap.set("n", "<left>", "<C-w>>")
keymap.set("n", "<up>", "<C-w>+")
keymap.set("n", "<down>", "<C-w>-")

-- install plugins
keymap.set("n", "ii", ":PackerSync<CR>")
