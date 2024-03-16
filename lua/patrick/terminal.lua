-- My first try at writing some real lua config from scratch to have aterminal running in nvim
local function open_terminal()
    print("opening terminal")
    vim.cmd.copen()
    vim.cmd.terminal()
    vim.cmd('setlocal nonumber norelativenumber')
    vim.cmd('startinsert')
    vim.api.nvim_buf_set_name(0, 'TERMINAL')
end

vim.keymap.set('n', '<leader>q', open_terminal)
