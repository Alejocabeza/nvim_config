local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
    ensure_installed = {
        'tsx',
        'php',
        'css',
        'html',
        'lua',
        'phpdoc',
        'jsdoc',
        'bash',
        'yaml',
        'dockerfile',
        'json',
        'scss',
        'javascript',
        'typescript',
        'python',
        'fish',
        'c',
        'cpp',
        'astro',
        'git_rebase',
        'gitattributes',
        'gitcommit',
        'graphql',
        'java',
        'make',
        'markdown',
        'markdown_inline',
        'pug',
        'regex',
        'slint',
        'toml',
        'twig',
        'vim',
        'vue'
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'php', 'javascript', 'typescript' },
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    autotag = {
        enable = true,
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },
    tree_docs = {
        enable = true
    }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
