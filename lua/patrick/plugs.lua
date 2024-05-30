local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',
      { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },
      'folke/neodev.nvim',
    },
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'rafamadriz/friendly-snippets',
    },
  },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },
  {'nvim-telescope/telescope-dap.nvim'},
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  {'mfussenegger/nvim-dap'},
  {
    'folke/trouble.nvim',
    opts = {
      icons = false,
      fold_open = "v",
      fold_closed = ">",
      signs = {
      	-- icons / text used for a diagnostic
      	error = "E",
      	warning = "W",
      	hint = "H",
      	information = "I",
      	other = "O",
      },
      use_diagnostic_signs = true
    },
  },
  {'norcalli/nvim-colorizer.lua'},
  {'nvim-lualine/lualine.nvim'},
  { 'folke/which-key.nvim', opts = {} },
  {'lewis6991/gitsigns.nvim',},
  {'theprimeagen/harpoon'},
  { "morhetz/gruvbox", name = "gruvbox", lazy = false, priority = 1000 },
  {"aktersnurra/no-clown-fiesta.nvim", name="no-clown-fiesta", lazy = false, priority = 1000}
}, {})

vim.cmd('colorscheme no-clown-fiesta')
