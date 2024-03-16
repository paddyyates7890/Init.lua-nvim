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
--  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
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
  {'nvim-lualine/lualine.nvim'},
  { 'folke/which-key.nvim', opts = {} },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  {'lewis6991/gitsigns.nvim',},
  {'theprimeagen/harpoon'},
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  { "morhetz/gruvbox", name = "gruvbox", lazy = false, priority = 1000 },
  {"zootedb0t/citruszest.nvim", name = "citruszest", lazy = false, priority = 1000,},
  {'mfussenegger/nvim-dap'},
}, {})

vim.cmd('colorscheme gruvbox')
