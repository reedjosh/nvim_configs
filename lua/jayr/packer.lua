return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Go features
    use 'ray-x/go.nvim'

    -- Lua Gui and util library
    use { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' }

    -- Tree Sitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'p00f/nvim-ts-rainbow'

    -- Telescope/FZF
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    -- Colorscheme
    use {
        'maxmx03/solarized.nvim',
         config = function()
          vim.o.background = 'dark' -- or 'light'
          vim.cmd.colorscheme 'solarized'
        end
    }

    -- Comments
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Font Icons
    use 'nvim-tree/nvim-web-devicons'

    -- Snips
    use {'L3MON4D3/LuaSnip', after = 'nvim-cmp', config = function() require('config.snippets') end }

    use { -- lsp-zero a boilerplate lsp helper.
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- The lsp plugin.
          {'williamboman/mason.nvim'},           -- Installs Lang Servers from vim.
          {'williamboman/mason-lspconfig.nvim',  -- LSP default configs.
           run = ":MasonUpdate"}, -- :MasonUpdate updates registry contents

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},         -- Required
          {'hrsh7th/cmp-nvim-lsp'},     -- Required
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lua'},
          {'hrsh7th/cmp-cmdline'},

          {'onsails/lspkind.nvim'},

          -- Snippets
          {'L3MON4D3/LuaSnip'},             -- Required
          {'rafamadriz/friendly-snippets'},
        }
    }
end)
