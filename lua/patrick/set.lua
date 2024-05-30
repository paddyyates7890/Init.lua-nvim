vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.guicursor = ""

vim.o.nu = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

vim.o.smartindent = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.wrap = false;

vim.o.mouse = 'a'

vim.o.clipboard = 'unnamedplus'

vim.o.breakindent = true

vim.o.swapfile = false
vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'yes'

vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.completeopt = 'menuone,preview,noselect'

vim.o.termguicolors = true

vim.filetype.add({
    extension = {
        epx = "php",
        inc = "php",
    },
    filename = {
        ["*.epx"] = "php",
		["*.inc"] = "php",
    },
})
