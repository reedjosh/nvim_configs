require 'go'.setup({
    goimports = 'gopls', -- if set to 'gopls' will use golsp format
    gofmt = 'gopls', -- if set to gopls will use golsp format
    max_line_len = 120,
    tag_transform = false,
    test_dir = '',
    comment_placeholder = '   ',
    lsp_cfg = true, -- false: use your own lspconfig
    lsp_gofumpt = true, -- true: set default gofmt in gopls format to gofumpt
    lsp_on_attach = true, -- use on_attach from go.nvim
    dap_debug = true,
    test_runner = "ginkgo",
    verbose_tests = true,
    run_in_floaterm = true,
})

vim.cmd("autocmd BufWritePre *.go :silent! lua require ('go.format').goimport() <BAR> lua require('go.format').gofmt()")
