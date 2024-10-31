return {
    "nvim-telescope/telescope.nvim",
    event = "VeryLazy",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make"
        }
    },
    config = function()
        require('telescope').setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = require("telescope.actions").move_selection_previous,
                        ["<C-j>"] = require("telescope.actions").move_selection_next,
                    }
                }
            },
            extensions = {
                fzf = {
                    fuzzy = false,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case"
                }
            },
        })
        require('telescope').load_extension('fzf')
    end,
    keys = {
        {
            "<leader>ff",
            function()
                require("telescope.builtin").find_files()
            end,
            desc = "Telescope: find files"
        },
        {
            "<leader>gb",
            function()
                require("telescope.builtin").git_branches()
            end,
            desc = "Git: branches browser"
        },
        {
            "<leader>fb",
            function()
                require("telescope.builtin").buffers()
            end,
            desc = "Telescope: Find buffers"
        },
        {
            "<leader>fg",
            function()
                require("telescope.builtin").live_grep()
            end,
            desc = "Telescope: Find grep"
        },
        {
            "<leader>fd",
            function()
                require("telescope.builtin").diagnostics()
            end,
            desc = "Telescope: Find diagnostics"
        },
    }
}
