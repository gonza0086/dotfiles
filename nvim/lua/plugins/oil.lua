return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    config = function()
        require("oil").setup({
            view_options = {
                show_hidden = true
            },
            keymaps = {
                ["v"] = { "actions.select", opts = { vertical = true, split = "belowright" } }
            },
            float = {
                preview_split = "right"
            }
        })

        vim.keymap.set("n", "<leader>e", require("oil").toggle_float, { desc = "Oil: Browse files" })
    end,
}
