local keymap = vim.keymap

vim.g.mapleader = " "

-- go normal mode
keymap.set("i", "kj", "<ESC>", { desc = "Vim: Go normal mode" })

-- save & quit
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Vim: Quit nvim" })
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Vim: Save file" })

-- find & center
keymap.set("n", "n", "nzzzv", { desc = "Vim: Finds next result and center the cursor" })
keymap.set("n", "N", "Nzzzv", { desc = "Vim: Finds previous result and center the cursor" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Vim: Move file down and center the cursor" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Vim: Move file up and center the cursor" })

-- Alting
keymap.set("n", "<A-k>", ":m -2<CR>", { desc = "Vim: Move line up" })
keymap.set("n", "<A-j>", ":m +1<CR>", { desc = "Vim: Move line down" })
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Vim: Move block up" })
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Vim: Move block down" })

-- tabbing & home
keymap.set("n", "<Tab>", ">>^", { desc = "Vim: Tab" })
keymap.set("n", "<S-Tab>", "<<^", { desc = "Vim: Untab" })
keymap.set("v", "<Tab>", ">gv", { desc = "Vim: Tab" })
keymap.set("v", "<S-Tab>", "<gv", { desc = "Vim: Untab" })
keymap.set("i", "<S-Tab>", "<ESC><<^i", { desc = "Vim: Untab" })
keymap.set("n", "<Home>", "^", { desc = "Vim: Go to the first character of line" })
keymap.set("v", "<Home>", "^", { desc = "Vim: Go to the first character of line" })
keymap.set("i", "<Home>", "<ESC>^i", { desc = "Vim: Go to the first character of line" })

-- windows
keymap.set("n", "<leader>sh", "<C-w>v", { desc = "Vim: Split window horizontal" })
keymap.set("n", "<C-l>", ":wincmd l<CR>", { desc = "Vim: Move to right window" })
keymap.set("n", "<C-h>", ":wincmd h<CR>", { desc = "Vim: Move to left window" })
keymap.set("n", "<C-k>", ":wincmd k<CR>", { desc = "Vim: Move to up window" })
keymap.set("n", "<C-j>", ":wincmd j<CR>", { desc = "Vim: Move to down window" })
keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Vim: Close current buffer" })

-- Highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Vim: Clear search highlights" })
