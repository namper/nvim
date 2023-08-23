-- Basing building of colors from noribuddy-kiwi
require("noirbuddy").setup({
    preset = 'kiwi',
})
vim.api.nvim_set_hl(0, "CursorLineNr", {  fg='#ffa500',})
vim.api.nvim_set_hl(0, "LineNrAbove", {  fg='#87847c',})
vim.api.nvim_set_hl(0, "LineNrBelow", {  fg='#87847c',})
vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { fg='#87847c', bg='#161a19'})

vim.api.nvim_set_hl(0, "@string", { fg='#9ece6a'})
vim.api.nvim_set_hl(0, "@boolean", { fg='orange'})
vim.api.nvim_set_hl(0, "@constant", { fg='orange'})
vim.api.nvim_set_hl(0, "@type.builtin", { fg='#229986'})
vim.api.nvim_set_hl(0, "@number", { fg='#6897bb'})


-- Indent line highlights
vim.api.nvim_set_hl(0, "IndentBlanklineSpaceCharBlankline", {  fg='#ffa500', bg='#161a19' })
vim.api.nvim_set_hl(0, "IndentBlanklineChar", {  fg='#323232', bg='#161a19' })
vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", {  fg='#ffa500', bg='#161a19' })
vim.api.nvim_set_hl(0, "IndentBlanklineContextStart", {  fg='#ffa500', bg='#161a19' })
vim.api.nvim_set_hl(0, "IndentBlanklineSpaceChar", {  fg='#ffa500', bg='#161a19' })
-- Spell
vim.api.nvim_set_hl(0, "SpellBad", {  fg='red', })
