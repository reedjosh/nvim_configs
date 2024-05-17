return require('packer').startup(function(use)

    -- Lua Gui and util library
    use { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' }

    -- Telescope/FZF
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { 'nvim-lua/plenary.nvim' }
    }

end)
