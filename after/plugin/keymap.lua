function _G.toggle_keymap( mode )
    return function ()
        if vim.o.keymap == "" then
            vim.cmd("set keymap=ge-qwerty")
        else
            vim.cmd("set keymap=")
        end

        if mode == "n" then
            return
        elseif mode == "i" then
            -- Simulate pressing <Esc> to go to normal mode and then 'i' to return to insert mode
            local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
            local i = vim.api.nvim_replace_termcodes("a", true, false, true)
            vim.api.nvim_feedkeys(esc .. i, 'n', true)
        end
    end
end


vim.keymap.set("i", "<F12>", _G.toggle_keymap("i"), { noremap = true })
vim.keymap.set("n", "<F12>", _G.toggle_keymap("n"), { noremap = true })
vim.keymap.set("x", "<F12>", _G.toggle_keymap("x"), { noremap = true })
