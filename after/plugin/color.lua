-- Basing building of colors from noribuddy-kiwi
require("noirbuddy").setup({
    preset = 'kiwi',
})
vim.api.nvim_set_hl(0, "CursorLineNr", {  fg='#ffa500',})
vim.api.nvim_set_hl(0, "LineNrAbove", {  fg='#87847c',})
vim.api.nvim_set_hl(0, "LineNrBelow", {  fg='#87847c',})

vim.api.nvim_set_hl(0, "@string", { fg='#9ece6a'})
vim.api.nvim_set_hl(0, "@boolean", { fg='orange'})
-- vim.api.nvim_set_hl(0, "@constant", { fg='orange'})
vim.api.nvim_set_hl(0, "@type.builtin", { fg='#229986'})
vim.api.nvim_set_hl(0, "@number", { fg='#6897bb'})
vim.api.nvim_set_hl(0, "@float.python", {fg="#6897bb"})
vim.api.nvim_set_hl(0, "@variable", { fg='#d5d5d5'})
vim.api.nvim_set_hl(0, "@method.call", { fg='#229986'})
-- vim.api.nvim_set_hl(0, "@function.call", { fg='#229986'})
vim.api.nvim_set_hl(0, "@keyword", { fg='orange'})
vim.api.nvim_set_hl(0, "@keyword.operator", { fg='orange'})
vim.api.nvim_set_hl(0, "@keyword.function", { fg='orange'})
vim.api.nvim_set_hl(0, "@conditional", { fg='orange'})
vim.api.nvim_set_hl(0, "@constant.builtin", { fg='orange'})
vim.api.nvim_set_hl(0, "@keyword.return", { fg='orange'})
vim.api.nvim_set_hl(0, "@repeat", { fg='orange'})
vim.api.nvim_set_hl(0, "@variable.builtin", { fg='#fa939f'})
vim.api.nvim_set_hl(0, "@exception", { fg='orange'})
vim.api.nvim_set_hl(0, "@parameter", { fg='#ffffff'})
vim.api.nvim_set_hl(0, "@function.builtin", { fg='#229986'})
vim.api.nvim_set_hl(0, "@function.method.call.python", { fg='#229986'})
vim.api.nvim_set_hl(0, "@string.escape", {fg="orange"})

-- lean
vim.api.nvim_set_hl(0, "@lsp.type.keyword", { fg='orange'})

-- Indent line highlights
vim.api.nvim_set_hl(0, "IndentBlanklineSpaceCharBlankline", {  fg='#ffa500', bg='#161a19' })
vim.api.nvim_set_hl(0, "IndentBlanklineChar", {  fg='#323232', bg='#161a19' })
vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", {  fg='#ffa500', bg='#161a19' })
vim.api.nvim_set_hl(0, "IndentBlanklineContextStart", {  fg='#ffa500', bg='#161a19' })
vim.api.nvim_set_hl(0, "IndentBlanklineSpaceChar", {  fg='#ffa500', bg='#161a19' })
-- Spell
vim.api.nvim_set_hl(0, "SpellBad", {  fg='red', })
-- Context
vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { fg='#ffa500'})
vim.api.nvim_set_hl(0, "TreesitterContextSeparator", {  fg='#323232', bg="#161a19"})


-- NO BACKGROUND
-- vim.api.nvim_set_hl(0, "Normal", { ctermbg="", bg='',})
vim.api.nvim_set_hl(0, "Normal", { bg='#131919',})



local hooks = require "ibl.hooks"

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    if vim.g.colors_name == "paper" then
        vim.api.nvim_set_hl(0, "IblIndent", {  fg='grey' })
        vim.api.nvim_set_hl(0, "IblScope", {  fg='grey' })
    end
end)
