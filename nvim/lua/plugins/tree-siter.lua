return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "VeryLazy",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {
            "lua",
            "javascript",
            "typescript",
            "rust",
            "sql",
            "html",
            "css"
        },
        highlight = {
            enable = true
        },
        indent = {
            enable = true
        }
    }
}
