local g = vim.g
local o = vim.opt
local cmd = vim.cmd
local exec = vim.api.nvim_exec

local hl = function(thing, opts)
  vim.api.nvim_set_hl(0, thing, opts)
end

hl('SignColumn', { bg = 'none' })
hl('Normal', { bg = 'none' })

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

if vim.g.neovide then
    vim.o.guifont = "Fira Code:h11"
end

g.mapleader = ' '
o.guicursor = ""
o.cursorline = true
o.termguicolors = true
o.clipboard = 'unnamedplus'
o.nu = true
o.relativenumber = true
o.hidden = true
o.errorbells = false
o.mouse = 'a'
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true
o.wrap = false
o.hidden = true
o.swapfile = false
o.backup = false
o.undodir = os.getenv('HOME') .. '/.vim/undodir'
o.undofile = true
o.hlsearch = false
o.incsearch = true
o.scrolloff = 8
o.signcolumn = 'yes'
o.isfname:append('@-@')
o.cmdheight = 1
o.updatetime = 50
o.shortmess:append('c')
o.showmode = false
o.colorcolumn = '70'
o.shell= "/usr/bin/fish"
o.smarttab = true
o.showmode = true
