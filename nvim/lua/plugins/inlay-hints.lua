return {
    "MysticalDevil/inlay-hints.nvim",
    event = "LspAttach",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
        require("inlay-hints").setup()
        vim.api.nvim_set_hl(0, "LspInlayHint", { bg = "background", fg = "#4d627d" })
    end
}
