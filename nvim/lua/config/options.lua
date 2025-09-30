local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs & Indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Line wrapping
opt.wrap = false

-- Backspace
opt.backspace = "indent,eol,start"

-- Appearance
opt.termguicolors = true
opt.cursorline = true

-- Remove mode above lualine
opt.showmode = false

-- Clipboard
opt.clipboard = "unnamedplus"

-- stop comments when enter
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
