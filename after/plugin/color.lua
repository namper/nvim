require("tokyonight").setup({
  -- use the night style
  style = "night",
  transparent=false,
  terminal_colors=false,
  -- disable italic for functions
  styles = {
    functions = "NONE" 
  },
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  day_brightness = 0.3, -- Adjusts the brig
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.green
    colors.error = "#ba3030"
  end
})

require("noirbuddy").setup({
    preset = 'kiwi',
})
vim.api.nvim_set_hl(0, "CursorLineNr", {  fg='#ffa500',})
vim.api.nvim_set_hl(0, "IndentBlanklineSpaceCharBlankline", {  fg='#ffa500', bg='#161a19' })
vim.api.nvim_set_hl(0, "IndentBlanklineChar", {  fg='#323232', bg='#161a19' })
vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", {  fg='#ffa500', bg='#161a19' })
vim.api.nvim_set_hl(0, "IndentBlanklineContextStart", {  fg='#ffa500', bg='#161a19' })
vim.api.nvim_set_hl(0, "IndentBlanklineSpaceChar", {  fg='#ffa500', bg='#161a19' })


-- setup must be called before loading
-- vim.cmd [[ "background = light"  ]]
-- vim.cmd.colorscheme "miami-nights"
