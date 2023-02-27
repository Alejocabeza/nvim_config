local status, phpfmt = pcall(require, "phpfmt")

if not status then
    return
end

phpfmt.setup({})

phpfmt.formatting()
