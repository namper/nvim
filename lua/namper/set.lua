vim.opt.relativenumber = true  -- relative numbers
vim.opt.nu = true -- current line

vim.opt.clipboard = 'unnamedplus' -- shared clipboard
vim.g.mapleader = " "  -- leader
vim.g.localleader = ","  -- local-leader

vim.opt.showcmd = false -- show commands in status line

vim.opt.mouse = "a" -- mouse reporting (sacrilegious)
vim.opt.encoding = "utf-8" -- encoding

vim.opt.spell = true -- enable spell checking
vim.opt.spelloptions = "camel" -- consider camel cases as separate word.
vim.opt.spellcapcheck = "" -- No need to check for capitalization

-- vim.opt.laststatus = 1 -- no status line
-- vim.opt.showmode = true -- hide -- Insert -- status

vim.opt.undofile = true -- use undo file instead of memory

vim.opt.termguicolors = true


-- 4 spaces instead of tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


-- smart indentation
vim.opt.smartindent = true

-- 
vim.opt.tabline = ""

-- nohlsearch
vim.opt.hlsearch = false

-- cursors
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,a:blinkon50"
vim.opt.cursorline = true -- cursor line
vim.opt.cursorlineopt='number'

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- update time
vim.opt.updatetime = 50

-- Disable comment continuation
vim.opt.formatoptions:remove{ "r", "c", "o" }
vim.cmd([[autocmd BufEnter * set formatoptions-=cro]])

vim.cmd("filetype indent plugin on")
