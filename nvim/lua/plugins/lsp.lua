return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "mason-org/mason.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "nvim-telescope/telescope.nvim"
    },
    config = function()
        local lspconfig = vim.lsp.config
        local mason_lspconfig = require("mason-lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local telescope = require("telescope.builtin")

        local on_attach = function(_, bufnr)
            -- Diagnostics
            vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Dagnostics: Show current diagnostics" })
            vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, { desc = "Diagnostics: Show prev error" })
            vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, { desc = "Diagnostics: Show next error" })

            -- LSP
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Lsp: Go to definitions" })
            vim.keymap.set("n", "gi", telescope.lsp_implementations,
                { buffer = bufnr, desc = "Lsp: Go to implementations" })

            vim.keymap.set("n", "gr", telescope.lsp_references, { buffer = bufnr, desc = "Lsp: Go to references" })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Lsp: Element's signature" })
            vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = bufnr, desc = "Lsp: Rename element" })
        end

        mason_lspconfig.setup({
            ensure_installed = { "lua_ls", "tailwindcss" }
        })


        -- mason_lspconfig.setup_handlers({
        --     function(server_name)
        --         -- lspconfig[server_name].setup({
        --         --     on_attach = on_attach,
        --         --     capabilities = cmp_nvim_lsp.default_capabilities()
        --         -- })
        --         vim.lsp.enable(server_name)
        --         -- lspconfig[server_name].setup({
        --         --     on_attach = on_attach,
        --         --     capabilities = capabilities,
        --         -- })
        --     end
        -- })
    end
}
