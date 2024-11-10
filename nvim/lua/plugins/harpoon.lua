return {
    "ThePrimeagen/harpoon",
    dependencies = {
        'nvim-lua/plenary.nvim',
        'ThePrimeagen/harpoon'
    },
    keys = {
        {
            "<leader>ha",
            function()
                require("harpoon.mark").add_file()
            end,
            desc = "Harpoon: Mark file"
        },
        {
            "<leader>fh",
            function()
                require("harpoon.ui").toggle_quick_menu()
            end,
            desc = "Harpoon: Toggle menu"
        },
        {
            "<leader>1",
            function()
                require("harpoon.ui").nav_file(1)
            end,
            desc = "Harpoon: Go to file 1"
        },
        {
            "<leader>2",
            function()
                require("harpoon.ui").nav_file(2)
            end,
            desc = "Harpoon: Go to file 1"
        },
        {
            "<leader>3",
            function()
                require("harpoon.ui").nav_file(3)
            end,
            desc = "Harpoon: Go to file 1"
        },
        {
            "<leader>4",
            function()
                require("harpoon.ui").nav_file(4)
            end,
            desc = "Harpoon: Go to file 1"
        },
    }
}
