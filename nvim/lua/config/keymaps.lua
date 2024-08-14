-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

vim.g.mapleader = " "

-- Removing lazy keymaps
vim.keymap.del("n", "<leader>ww")
vim.keymap.del("n", "<leader>wd")
vim.keymap.del("n", "<leader>w-")
vim.keymap.del("n", "<leader>w|")
vim.keymap.del("n", "s")

-- go normal mode keymaps
keymap.set("i", "kj", "<ESC>")
keymap.set("v", "kj", "<ESC>")

-- tabbing
keymap.set("n", "<Tab>", ">>^")
keymap.set("n", "<S-Tab>", "<<^")
keymap.set("i", "<S-Tab>", "<ESC><<^i")

-- moving lines Alt
keymap.set("n", "<A-j>", ":m +1<CR>")
keymap.set("n", "<A-k>", ":m -2<CR>")
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")

-- moving through file
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- save & quit file
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit nvim" })

-- go to first character with beginning
keymap.set("n", "<Home>", "^")
keymap.set("v", "<Home>", "^")
keymap.set("i", "<Home>", "<ESC>^i")

-- spliting windows
keymap.set("n", "<leader>sh", "<C-w>v", { desc = "Split window" })

-- moving between windows
keymap.set("n", "<C-k>", ":wincmd k<CR>")
keymap.set("n", "<C-j>", ":wincmd j<CR>")
keymap.set("n", "<C-h>", ":wincmd h<CR>")
keymap.set("n", "<C-l>", ":wincmd l<CR>")
keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Go to prev buffer" })
keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Close current buffer" })

-- Clearing highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- LazyGit
keymap.set("n", "<leader>g", ":LazyGit<cr>", { desc = "Open lazy git" })
