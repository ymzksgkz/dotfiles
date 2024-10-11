-- Ctrl + a/e で行頭/行末に移動した。デフォルトのキーマップを上書きしてしまってるのが少し気になる。
vim.api.nvim_set_keymap('n', '<C-a>', '^', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-e>', '$', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-a>', '<C-o>^', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-e>', '<C-o>$', { noremap = true, silent = true })

-- Ctrl + f/b/p/n でカーソル移動。
vim.api.nvim_set_keymap('i', '<C-f>', '<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-b>', '<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-p>', '<Up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-n>', '<Down>', { noremap = true, silent = true })

-- Ctrl + k でその行のカーソル位置より後ろを削除
vim.api.nvim_set_keymap('n', '<C-k>', 'd$', { noremap = true, silent = true })

