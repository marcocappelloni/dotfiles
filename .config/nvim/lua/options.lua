
vim.opt.number              = true -- line numbers
vim.opt.relativenumber      = true -- relative line numbers

vim.opt.splitbelow          = true -- new window is put below the current one
vim.opt.splitright          = true -- new window is put on the right of the current one

vim.opt.wrap                = false -- long wrap line

vim.opt.expandtab           = true -- expand <Tab> to space in insert mode
vim.opt.tabstop             = 4 -- number of spaces for a Tab when saving or opening the file
vim.opt.shiftwidth          = 4 -- number of spaces used for the auto indent

vim.opt.clipboard           = "unnamedplus" -- synchronizes the system clipboard with Neovim's clipboard

vim.opt.scrolloff           = 5 -- number of screen lines to show around the cursor

vim.opt.virtualedit         = "block" -- in visual block mode the cursor can be positionated where there is no actual character

vim.opt.inccommand          = "split" -- shows all the changes in a split window in real time

vim.opt.ignorecase          = true -- ignore the case when we are searching for commands in the command line

vim.opt.termguicolors       = true -- enable full range of colors

vim.g.mapleader             = " "
vim.g.maplocalleader        = " "
