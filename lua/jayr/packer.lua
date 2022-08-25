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


    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim' -- Adds completion type icons.
    use({ -- LSP Plugin With Some sweet features.
        -- Not yet configured.
        "glepnir/lspsaga.nvim",
        branch = "main",
        config = function()
            local saga = require("lspsaga")

            saga.init_lsp_saga({
                -- your configuration
            })
        end,
    })

    -- Completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'

    -- Telescope/FZF
    use { 'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Snips
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Colorschemes
    use 'folke/tokyonight.nvim'
    use 'ray-x/aurora'
    use 'ray-x/starry.nvim'

    -- Icons
    use 'kyazdani42/nvim-web-devicons'
end)
