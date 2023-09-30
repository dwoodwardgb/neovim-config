-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim';

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = {
      {'nvim-lua/plenary.nvim'},
    }
  };
  use {'nvim-telescope/telescope-fzy-native.nvim'};

  use {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}};

  use 'Mofiqul/vscode.nvim';
  use 'lourenci/github-colors';
  use 'chiendo97/intellij.vim';
  use 'Mofiqul/adwaita.nvim';
  use 'p00f/alabaster.nvim';
  use 'lunacookies/vim-colors-xcode';

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
    }
  };

  use 'tpope/vim-fugitive';
  use { "catppuccin/nvim", as = "catppuccin" };
  use 'airblade/vim-gitgutter';
  use 'rebelot/kanagawa.nvim';
  use 'rose-pine/neovim';
  use 'cocopon/iceberg.vim';
  use 'kristijanhusak/vim-hybrid-material';
  use 'ntbbloodbath/sweetie.nvim';
  use 'nikolvs/vim-sunbather';
end);

