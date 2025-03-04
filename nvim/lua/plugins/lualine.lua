return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
        options = {
            globalstatus = true,
            section_separators = { left = "", right = "" },
            theme = "gruvbox-material"
        },
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", {
                "diagnostics",
                symbols = { error = "E", warn = "W", info = "I", hint = "H" }
            } },
            lualine_c = { "filename" },
            lualine_x = { "filetype" },
            lualine_y = { "" },
            lualine_z = { "location" },
        }
    },
}
