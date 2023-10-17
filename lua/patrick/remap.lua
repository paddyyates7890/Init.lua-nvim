vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', '<leader>s<Left>', '<C-w><Left>', { silent = true })
vim.keymap.set('n', '<leader>s<Right>', '<C-w><Right>', { silent = true })

vim.keymap.set('n', '<leader>s<Down>', '<C-w><Down>', { silent = true })
vim.keymap.set('n', '<leader>s<Up>', '<C-w><Up>', { silent = true })

vim.keymap.set('n', '<leader>sv', '<C-w>v', { silent = true })
vim.keymap.set('n', '<leader>sh', '<C-w>s', { silent = true })

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set('n', '<leader>pv', ':Ex<CR>', { silent = true })
vim.keymap.set('n', '<F5>', ':NERDTreeToggle <CR>', { silent = true })

vim.keymap.set('n', '<leader>sd', ':Trouble document_diagnostics<CR>', { desc = 'show errors', silent = true })
vim.keymap.set('n', '<leader>sr', ':Trouble lsp_references<CR>', { desc = 'show refs', silent = true})
vim.keymap.set('n', '<leader>gd', ':Trouble lsp_definitions<CR>', { desc = 'show defs', silent = true })

vim.keymap.set("n", "<leader>init", "<cmd>e ~/.config/nvim/<cr>")

vim.keymap.set("n", "<leader>pv", "<cmd>Ex<cr>")
