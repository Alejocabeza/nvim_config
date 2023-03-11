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
        "lua_ls",
        "pyright",
        "tailwindcss",
        "docker_compose_language_service",
        "clangd",
        "cssls",
        "html",
        "eslint",
        "taplo",
    },
    automatic_installation = true,
})
