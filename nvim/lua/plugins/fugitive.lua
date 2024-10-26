return {
    "tpope/vim-fugitive",
    cmd = { "G", "Git" },
    keys = {
        { "<leader>gg", ":G<CR>",      desc = "Git: open git status" },
        { "<leader>gp", ":G pull<CR>", desc = "Git: git pull" }
    },
}
