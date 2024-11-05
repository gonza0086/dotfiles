return {
    'mrcjkb/rustaceanvim',
    version      = '^5',  -- Recommended
    lazy         = false, -- This plugin is already lazy
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "MysticalDevil/inlay-hints.nvim"
    },
    config       = function()
        local telescope = require("telescope.builtin")

        vim.g.rustaceanvim = {
            server = {
                on_attach = function(_, bufnr)
                    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
                    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev)
                    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next)

                    -- LSP
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
                    vim.keymap.set("n", "gi", telescope.lsp_implementations, { buffer = bufnr })

                    vim.keymap.set("n", "gr", telescope.lsp_references, { buffer = bufnr })
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
                    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = bufnr })
                end,
                settings = {
                    ["rust-analyzer"] = {
                        inlayHints = {
                            bindingModeHints = {
                                enable = false,
                            },
                            chainingHints = {
                                enable = false,
                            },
                            closingBraceHints = {
                                enable = false,
                                minLines = 25,
                            },
                            closureReturnTypeHints = {
                                enable = "never",
                            },
                            lifetimeElisionHints = {
                                enable = "never",
                                useParameterNames = false,
                            },
                            maxLength = 25,
                            parameterHints = {
                                enable = false,
                            },
                            reborrowHints = {
                                enable = "never",
                            },
                            renderColons = true,
                            typeHints = {
                                enable = true,
                                hideClosureInitialization = false,
                                hideNamedConstructor = false,
                            },
                        },
                    }
                }
            }
        }
    end
}
