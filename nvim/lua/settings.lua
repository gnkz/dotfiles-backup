local utils = require("utils")
local cmd = vim.cmd
local indent = 4

vim.g.mapleader = " "

cmd "syntax enable"
cmd "filetype plugin indent on"

utils.opt("b", "shiftwidth", indent)
utils.opt("b", "smartindent", true)
utils.opt("b", "swapfile", false)
utils.opt("b", "tabstop", indent)
utils.opt("b", "textwidth", 100)
utils.opt("b", "undofile", true)
utils.opt("o", "hidden", true)
utils.opt("o", "hlsearch", true)
utils.opt("o", "ignorecase", true)
utils.opt("o", "incsearch", true)
utils.opt("o", "ruler", true)
utils.opt("o", "scrolloff", 12)
utils.opt("o", "showbreak", "+++")
utils.opt("o", "showmatch", true)
utils.opt("o", "smartcase", true)
utils.opt("o", "termguicolors", true)
utils.opt("o", "undolevels", 5000)
utils.opt("o", "updatetime", 50)
utils.opt("o", "visualbell", true)
utils.opt("w", "cursorline", true)
utils.opt("w", "linebreak", true)
utils.opt("w", "relativenumber", true)
utils.opt("w", "signcolumn", "yes")

cmd "au TextYankPost * lua vim.highlight.on_yank {on_visual = false}"
cmd "autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab"
cmd "autocmd Filetype typescript setlocal ts=4 sw=4 sts=0 expandtab"
cmd "autocmd Filetype json setlocal ts=2 sw=2 sts=0 expandtab"
cmd "autocmd Filetype html setlocal ts=2 sw=2 expandtab"
cmd "autocmd Filetype css setlocal ts=2 sw=2 sts=0 expandtab"
--[[
highlight Comment cterm=italic gui=italic

]]
