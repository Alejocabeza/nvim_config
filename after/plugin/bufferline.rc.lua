local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
    options = {
        mode = "tabs",
        separator_style = 'slant',
        always_show_bufferline = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true
    },
    highlights = {
        separator = {
            fg = '#282828',
            bg = '#282828',
        },
        separator_selected = {
            fg = '#282828',
        },
        background = {
            fg = '#fdf6e3',
            bg = '#282828'
        },
        buffer_selected = {
            fg = '#fdf6e3',
            bold = true,
        },
        fill = {
            bg = '#282828'
        }
    },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
