-- Change buffers & update inbetween.
vim.keymap.set("n", "<leader>s", "<cmd>up<CR><bar><cmd>bnext<CR>")
vim.keymap.set("n", "<leader>a", "<cmd>up<CR><bar><cmd>bprev<CR>")

-- Telescopic!
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- Setting rempas without bind function.
vim.keymap.set("n", "<leader>dd", "<cmd>Ex %:p:h<CR>",
    { desc = "Open netrw in the directory the current file is in." })
vim.keymap.set("n", "<leader>da", "<cmd>Ex .<CR>",
    { desc = "Open netrw in the shell's current working directory." })

-- Quit!?
vim.keymap.set("n", "<leader>q", "<cmd>up<bar>q!<CR>",
    { desc = "Save and exit vim." })
