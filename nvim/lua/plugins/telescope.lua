return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      vim.keymap.del("n", "<leader><space>")
      vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Telescope grep" })
    end,
  },
}
