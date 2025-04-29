return {
    "rebelot/kanagawa.nvim",
    config = function()
        vim.cmd([[colorscheme kanagawa-dragon]])
        vim.api.nvim_set_hl(0, "normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "normalFloat", { bg = "none" })
    end
}
