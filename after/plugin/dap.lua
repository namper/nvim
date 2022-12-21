require('nvim-dap-virtual-text').setup()
require('dap-python').setup(
    '$VIRTUAL_ENV/bin/python'
)
require('dap-python').test_runner = 'unittest'

vim.keymap.set('n', '<F5>', require 'dap'.continue)
vim.keymap.set('n', '<F10>', require 'dap'.step_over)
vim.keymap.set('n', '<F11>', require 'dap'.step_into)
vim.keymap.set('n', '<F12>', require 'dap'.step_out)
vim.keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)

vim.fn.sign_define('DapBreakpoint',{ text ='→ ', texthl ='', linehl ='', numhl =''})
vim.fn.sign_define('DapStopped',{ text ='⇥ ', texthl ='', linehl ='', numhl =''})



vim.keymap.set('n', '<leader>tm', require 'dap-python'.test_method)
vim.keymap.set('n', '<leader>tc', require 'dap-python'.test_class)
vim.keymap.set('n', '<leader>ds', require 'dap-python'.debug_selection)


