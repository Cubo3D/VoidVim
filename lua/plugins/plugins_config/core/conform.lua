return{
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "black" },
            javascript = { "prettier" },
            html = { "prettier" },
            css = { "prettier" },
            markdown = { "prettier" }
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        }
    },
}

-- Resolvi criar um arquivo separado porque acho que ele merecia
