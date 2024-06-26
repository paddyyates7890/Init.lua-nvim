vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', '<leader>s<Left>', '<C-w><Left>', { silent = true })
vim.keymap.set('n', '<leader>s<Right>', '<C-w><Right>', { silent = true })

vim.keymap.set('n', '<leader>s<Down>', '<C-w><Down>', { silent = true })
vim.keymap.set('n', '<leader>s<Up>', '<C-w><Up>', { silent = true })

vim.keymap.set('n', '<leader>sv', '<C-w>v', { silent = true })
vim.keymap.set('n', '<leader>sh', '<C-w>s', { silent = true })

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("n", "<leader>init", "<cmd>e ~/.config/nvim/<cr>")

vim.keymap.set("n", "<leader>pv", "<cmd>Ex<cr>", { desc = 'file explorer', silent = true  })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>e", "<cmd>e /var/log/nginx/error.log<cr>")

vim.keymap.set("n", "<leader>bp", "<cmd>bp<cr>")
vim.keymap.set("n", "<leader>bn", "<cmd>bn<cr>")
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>")

vim.keymap.set("x", "ESC", "<CR>c");
