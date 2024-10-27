return {
    "nvimdev/dashboard-nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
    },
    config = function()
        require("dashboard").setup({
            theme = 'doom',
            config = {
                center = {
                    {
                        desc = "New file        ",
                        desc_hl = "String",
                        key = "n",
                        key_hl = "Number",
                        key_format = "%s",
                        action = ":bd"
                    },
                    {
                        desc = "Find file        ",
                        desc_hl = "String",
                        key = "f",
                        key_hl = "Number",
                        key_format = "%s",
                        action = ":Telescope find_files"
                    },
                    {
                        desc = "File browser        ",
                        desc_hl = "String",
                        key = "e",
                        key_hl = "Number",
                        key_format = "%s",
                        action = require("oil").toggle_float
                    },
                    {
                        desc = "Recent files        ",
                        desc_hl = "String",
                        key = "o",
                        key_hl = "Number",
                        key_format = "%s",
                        action = ":Telescope oldfiles"
                    },
                    {
                        desc = "Lazy        ",
                        desc_hl = "String",
                        key = "l",
                        key_hl = "Number",
                        key_format = "%s",
                        action = ":Lazy"
                    },
                    {
                        desc = "Git pull        ",
                        desc_hl = "String",
                        key = "p",
                        key_hl = "Number",
                        key_format = "%s",
                        action = ":G pull"
                    },
                    {
                        desc = "Git branches        ",
                        desc_hl = "String",
                        key = "b",
                        key_hl = "Number",
                        key_format = "%s",
                        action = ":Telescope git_branches"
                    },
                    {
                        desc = "Config        ",
                        desc_hl = "String",
                        key = "c",
                        key_hl = "Number",
                        key_format = "%s",
                        action = function()
                            require("telescope").extensions.file_browser.file_browser({ cwd = "~/.config/nvim" })
                        end
                    },
                },
                header = {
                    '',
                    '',
                    '',
                    '',
                    ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
                    ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
                    ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
                    ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
                    ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
                    ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
                    '',
                    '',
                    'Welcome Back Gonza!',
                    '',
                    '',
                    '',
                    '',
                    '',
                }
            },
        })
    end
}
