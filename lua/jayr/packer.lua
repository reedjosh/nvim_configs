return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Go features
  use 'ray-x/go.nvim'

  -- Lua Gui and util library
  use 'ray-x/guihua.lua' 

  -- Tree Sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  -- Snips
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Colorschemes
  use 'folke/tokyonight.nvim'
  use 'ray-x/aurora'   
end)
