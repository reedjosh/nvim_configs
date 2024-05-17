require("jayr")
require("config.snippets")

function _G.put(...)
  local objects = {}
  for i = 1, select('#', ...) do
    local v = select(i, ...)
    table.insert(objects, vim.inspect(v))
  end

  print(table.concat(objects, '\n'))
  return ...
end

 -- go to last loc when opening a buffer
vim.api.nvim_create_autocmd(
  "BufReadPost",
  { command = [[if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif]] }
)
vim.api.nvim_create_autocmd(
  "VimEnter",
  { command = [[if argc() == 0 | Explore! | endif]] }
)

-- Set tiltfile filetype.
vim.filetype.add({ filename = { ['Tiltfile'] = 'starlark' } })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- treesitter for coloration, folds, and ....
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({ 
          ensure_installed = {"go", "bash", "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html"},
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
  },
  -- Colorscheme
  {
      'maxmx03/solarized.nvim',
       config = function()
        vim.o.background = 'dark' -- or 'light'
        vim.cmd.colorscheme 'solarized'
       end
  },

  -- Font Icons
  "nvim-tree/nvim-web-devicons",

  -- Easy Comments
  {'numToStr/Comment.nvim', lazy = false},

  "hiphish/rainbow-delimiters.nvim",   -- Rainbow Parens for easier matching.

  -- Snipps.
  'neovim/nvim-lspconfig',             -- LSP configurations.
  'williamboman/mason.nvim',           -- Installs Lang Servers from vim.
  'williamboman/mason-lspconfig.nvim', -- Bridge gap between mason and LSPConfig.

  'towolf/vim-helm', -- Helm syntax.

   { -- FZY fincer.
     'nvim-telescope/telescope.nvim',
     dependencies = { 'nvim-lua/plenary.nvim' }
   },

  -- Autocompletion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-nvim-lua',
  'hrsh7th/cmp-cmdline',
  'onsails/lspkind.nvim',
  'saadparwaiz1/cmp_luasnip',

  'nvim-treesitter/nvim-treesitter-textobjects',

  "ray-x/go.nvim",                     -- Go Helpers.
  "pmizio/typescript-tools.nvim",      -- Typescript Helpers.

  'VonHeikemen/lsp-zero.nvim',         -- lsp-zero a boilerplate lsp helper. Integrates lspconfig and cmp.

  -- Snippets
  {'L3MON4D3/LuaSnip', after = 'nvim-cmp', config = function() require('config.snippets') end },
  {'rafamadriz/friendly-snippets'},
  -- Popup to show keybindings available to complete.
  "folke/which-key.nvim",
  -- Project and local settings manager.
  -- { "folke/neoconf.nvim", cmd = "Neoconf" }, 
  -- Lua nvim plugin development plugin.
  -- "folke/neodev.nvim",
})
