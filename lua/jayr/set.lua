vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true
vim.opt.wrap = false
vim.g.mapleader = " "

vim.opt.confirm = true
vim.opt.ignorecase = true
vim.opt.errorbells = false
vim.opt.confirm = true
vim.opt.swapfile = false
-- Not sure how to convert
-- t_vb=


-- Tell vim to remember certain things when we exit
--  '10  :  marks will be remembered for up to 10 previously edited files
--  "100 :  will save up to 100 lines for each register
--  :20  :  up to 20 lines of command-line history will be remembered
--  %    :  saves and restores the buffer list
--  n... :  where to save the viminfo files
vim.opt.viminfo="'10,\"100,:20,%,n~/.viminfo"
vim.opt.undofile = true

-- Vim completion options
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
