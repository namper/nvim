local keyamp = require("namper.keymap")

local nnoremap = keyamp.nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Telescope
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
nnoremap("<leader>fa", "<cmd>lua require('telescope.builtin').git_branches()<cr>")
nnoremap("<leader>fd", "<cmd>lua require('telescope.builtin').diagnostics({bufnr = 0})<cr>")

-- Debug
nnoremap("<silent> <F5>", "<Cmd>lua require'dap'.continue()<CR>")
nnoremap("<silent> <F10>", "<Cmd>lua require'dap'.step_over()<CR>")
nnoremap("<silent> <F11>", "<Cmd>lua require'dap'.step_into()<CR>")
nnoremap("<silent> <F12>", "<Cmd>lua require'dap'.step_out()<CR>")
nnoremap("<silent> <Leader>b", "<Cmd>lua require'dap'.toggle_breakpoint()<CR>")
nnoremap("<silent> <Leader>B", "<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
nnoremap(
	"<silent> <Leader>lp",
	"<Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>"
)
nnoremap("<silent> <Leader>dr", "<Cmd>lua require'dap'.repl.open()<CR>")
nnoremap("<silent> <Leader>dl", "<Cmd>lua require'dap'.run_last()<CR>")
-- Debug + Test
nnoremap("<silent> <leader>dn", ":lua require('dap-python').test_method()<CR>")
nnoremap("<silent> <leader>df", ":lua require('dap-python').test_class()<CR>")

-- Scrolling
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-o>", "<C-o>zz")
nnoremap("<C-i>", "<C-i>zz")

-- Terminal emulation only
vim.cmd([[ :tnoremap <Esc> <C-\><C-n> ]])
