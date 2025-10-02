return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "mason-org/mason.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "nvim-telescope/telescope.nvim"
    },
    config = function()
        local mason_lspconfig = require("mason-lspconfig")
        local telescope = require("telescope.builtin")

        local lsp_augroup = vim.api.nvim_create_augroup('LspBufferSetup', { clear = true })
        vim.api.nvim_create_autocmd('LspAttach', {
            group = lsp_augroup,
            callback = function(args)
                local bufnr = args.buf
                -- NOTE: The client object is available here if you need client-specific checks,
                -- e.g., local client = vim.lsp.get_client_by_id(args.data.client_id)

                -- Helper function to set buffer-local keymaps
                local map = function(mode, lhs, rhs, desc)
                    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
                end

                -------------------------------------------------
                -- Diagnostics Keymaps (Global: works on all attached buffers)
                -------------------------------------------------
                -- (Keep these outside the map helper if you want them truly global,
                -- but inside the callback if you want them active only when an LSP is attached.)
                map("n", "<leader>d", vim.diagnostic.open_float, "Diagnostics: Show current diagnostics" )
                map("n", "<leader>dk", vim.diagnostic.goto_prev, "Diagnostics: Show prev error" )
                map("n", "<leader>dj", vim.diagnostic.goto_next, "Diagnostics: Show next error" )

                -------------------------------------------------
                -- LSP Keymaps (Buffer-Local)
                -------------------------------------------------
                map("n", "gd", vim.lsp.buf.definition, "Lsp: Go to definition")
                map("n", "gi", telescope.lsp_implementations, "Lsp: Go to implementations")
                map("n", "gr", telescope.lsp_references, "Lsp: Go to references")
                map("n", "K", vim.lsp.buf.hover, "Lsp: Element's signature")
                map("n", "<leader>r", vim.lsp.buf.rename, "Lsp: Rename element")
                map("n", "<leader>ca", vim.lsp.buf.code_action, "Lsp: Code Action")
            end,
        })

        -- local on_attach = function(_, bufnr)
        --     -- Diagnostics
        --     vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Dagnostics: Show current diagnostics" })
        --     vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, { desc = "Diagnostics: Show prev error" })
        --     vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, { desc = "Diagnostics: Show next error" })
        --
        --     -- LSP
        --     vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Lsp: Go to definitions" })
        --     vim.keymap.set("n", "gi", telescope.lsp_implementations,
        --         { buffer = bufnr, desc = "Lsp: Go to implementations" })
        --
        --     vim.keymap.set("n", "gr", telescope.lsp_references, { buffer = bufnr, desc = "Lsp: Go to references" })
        --     vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Lsp: Element's signature" })
        --     vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = bufnr, desc = "Lsp: Rename element" })
        -- end

        mason_lspconfig.setup({
            ensure_installed = { "lua_ls", "ts_ls", "tailwindcss" }
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
