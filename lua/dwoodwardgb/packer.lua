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
  use 'airblade/vim-gitgutter';
  use 'rose-pine/neovim';
  use 'cocopon/iceberg.vim';
  use 'nikolvs/vim-sunbather';
  use 'tomasr/molokai';
  use 'p00f/alabaster.nvim';
  use 'miikanissi/modus-themes.nvim';
  use 'savq/melange-nvim';
  use 'Mofiqul/vscode.nvim';
  use 'rmehri01/onenord.nvim';
  use 'josebalius/vim-light-chromeclipse';
  use 'ronisbr/nano-theme.nvim';
  use 'liuchengxu/space-vim-theme';
  use 'chiendo97/intellij.vim';
  use 'sainnhe/everforest';
  use {'mcchrish/zenbones.nvim', requires = "rktjmp/lush.nvim" };

end);

