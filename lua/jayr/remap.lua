local nnoremap = require("jayr.keymap").nnoremap

nnoremap("<leader>dd", "<cmd>Ex %:p:h<CR>")
nnoremap("<leader>da", "<cmd>Ex .<CR>")
nnoremap("<leader>c", "<cmd>up<bar>bd<CR>")
nnoremap("<leader>s", "<cmd>up<CR><bar><cmd>bnext<CR>")
nnoremap("<leader>a", "<cmd>up<CR><bar><cmd>bprev<CR>")

-- Telescopic!
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")
