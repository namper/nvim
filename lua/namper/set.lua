vim.opt.relativenumber = true  -- relative numbers
vim.opt.nu = true -- current line

vim.opt.clipboard = 'unnamedplus' -- shared clipboard
vim.g.mapleader = " "  -- leader

vim.opt.showcmd = false -- show commands in status line

vim.opt.mouse = "a" -- mouse reporting (sacrilegious)
vim.opt.encoding = "utf-8" -- encoding

vim.opt.spell = true -- enable spell checking

vim.opt.laststatus = 0 -- no status line
vim.opt.showmode = false -- hide -- Insert -- status

vim.opt.undofile = true -- use undo file instead of memory

vim.opt.termguicolors = true


-- 4 spaces instead of tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


-- smart indentation
vim.opt.smartindent = true

-- nohlsearch
vim.opt.hlsearch = false

-- cursors
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
vim.opt.cursorline = true -- cursor line

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- update time
vim.opt.updatetime = 50

vim.cmd("filetype indent plugin on")


vim.cmd [[ highlight ColorColumn ctermbg=7 ]]
