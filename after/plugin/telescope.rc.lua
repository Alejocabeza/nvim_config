local status, telescope = pcall(require, "telescope")

if not status then return end

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

telescope.setup({
	defaults = {
		mappings = {
			n = {
				["q"] = actions.close,
			},
		},
	},
	extensions = {
		file_browser = {
			theme = "dropdown",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			mappings = {
				-- your custom insert mode mappings
				["i"] = {
					["<C-w>"] = function()
						vim.cmd("normal vbd")
					end,
				},
			},
		},
	},
})

vim.keymap.set("n", ";f", function() builtin.find_files({ no_ignore = false, hidden = true, }) end)
vim.keymap.set("n", ";l", function() builtin.live_grep() end)
vim.keymap.set("n", ";b", function() builtin.buffers() end)
vim.keymap.set("n", ";t", function() builtin.help_tags() end)
vim.keymap.set("n", ";r", function() builtin.resume() end)
vim.keymap.set("n", ";e", function() builtin.diagnostics() end)
-- Command for git
vim.keymap.set("n", ";gc", "<cmd>Telescope git_commits<cr>")
vim.keymap.set("n", ";gfc", "<cmd>Telescope git_bcommits<cr>")
vim.keymap.set("n", ";gb", "<cmd>Telescope git_branches<cr>")
vim.keymap.set("n", ";gs", "<Cmd>Telescope git_status<CR>")
