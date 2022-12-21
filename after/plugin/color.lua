require("tokyonight").setup({
  -- use the night style
  style = "night",
  transparent=true,
  -- disable italic for functions
  styles = {
    functions = "NONE" 
  },
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.green
    colors.error = "#a83232"
  end
})

vim.cmd[[colorscheme tokyonight]]
