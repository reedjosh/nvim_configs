local nnoremap = require("jayr.keymap").nnoremap

nnoremap("<leader>c", "<cmd>up<bar>bd<CR>")
nnoremap("<leader>s", "<cmd>up<CR><bar><cmd>bnext<CR>")
nnoremap("<leader>a", "<cmd>up<CR><bar><cmd>bprev<CR>")

-- Telescopic!
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")

-- Setting rempas without bind function.
vim.keymap.set("n", "<leader>dd", "<cmd>Ex %:p:h<CR>",
    { desc = "Open netrw in the directory the current file is in." })
vim.keymap.set("n", "<leader>da", "<cmd>Ex .<CR>",
    { desc = "Open netrw in the shell's current working directory." })

-- Quit!?
vim.keymap.set("n", "<leader>q", "<cmd>up<bar>q!<CR>",
    { desc = "Save and exit vim." })
