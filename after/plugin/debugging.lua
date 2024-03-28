local dap = require('dap')
require('telescope').load_extension('dap')

dap.adapters.php = {
    type = "executable",
    command = "node",
    args = { os.getenv("HOME") .. "/vscode-php-debug/out/phpDebug.js" }
}

dap.configurations.php = {
    {
        type = "php",
        request = "launch",
        name = "Listen for Xdebug",
        port = 9003
    }
}


vim.keymap.set('n', '<F9>', function() require('dap').continue() end, { desc='DEBUG continu' })
vim.keymap.set('n', '<F8>', function() require('dap').step_over() end, { desc='DEBUG step over' })
vim.keymap.set('n', '<F7>', function() require('dap').step_into() end, { desc='DEBUG step into' })
vim.keymap.set('n', '<s-F8>', function() require('dap').step_out() end, { desc='DEBUG step out' })
vim.keymap.set('n', '<leader>b', function() require('dap').toggle_breakpoint() end, { desc='DEBUG toggle breakpoint' })
vim.keymap.set('n', '<leader>B', function() require('dap').set_breakpoint() end, { desc='DEBUG set break point' })
vim.keymap.set('n', '<leader>lb', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, { desc='DEBUG log breakpoint?' })
vim.keymap.set('n', '<leader>dr', function() require('dap').repl.open() end, { desc='DEBUG' })
vim.keymap.set('n', '<leader>dl', function() require('dap').run_last() end, { desc='DEBUG' })

vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
  require('dap.ui.widgets').hover()
end, { desc='DEBUG value under cursor hover' })

vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
  require('dap.ui.widgets').preview()
end, { desc='DEBUG value under cursor view' })

vim.keymap.set('n', '<Leader>df', function()
  local widgets = require('dap.ui.widgets')
  local mysidebar = widgets.sidebar(widgets.frames)
  mysidebar.open()
end, { desc='DEBUG frames' })

vim.keymap.set('n', '<Leader>ds', function()
  local widgets = require('dap.ui.widgets')
  local mysidebar = widgets.sidebar(widgets.scopes)
  mysidebar.open()
end, { desc='DEBUG scope' })
