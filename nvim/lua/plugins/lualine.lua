return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
        options = {
            globalstatus = true,
            section_separators = { left = "", right = "" }
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
    init = function()
        vim.cmd("autocmd VimEnter,VimLeave * silent !tmux set status")
    end
}
