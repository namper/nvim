-- vim - flake 8 
vim.g.flake8_show_in_gutter=1
vim.g.flake8_show_in_file=1
vim.g.flake8_show_quickfix=0
---
vim.cmd('autocmd BufWritePost *.py call flake8#Flake8()')
