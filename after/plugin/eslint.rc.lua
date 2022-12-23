local status, eslint = pcall(require, 'eslint')
if (not status) then return end

eslint.setup({
    bin = 'eslint',
    code_actions = {
        enable = true,
        apply_on_save = { enable = true,
            types = { "problem" },
        },
        disable_rule_comment = {
            enable = true,
            location = "separate_line",
        },
    },
    diagnostics = {
        enable = true,
        report_unused_disable_directives = false,
        run_on = "save",
    },
})
