return {
   "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            javascript = { "prettier" },
            javascriptreact = { "prettier" },
            typescript = { "prettier" },
            typescriptreact = { "prettier" },
            json = { "prettier" },
            rust = { "rustfmt" },
        },
        format_on_save = {
            lsp_format = "fallback",
            timeout_ms = 500
        }
    }
}
