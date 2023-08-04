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

-- setup must be called before loading
vim.cmd.colorscheme "tokyonight"
