-- https://zenn.dev/fukakusa_kadoma/articles/4d48fb4e67c945#barbar.nvim
return {
  "romgrk/barbar.nvim",
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  config = function()
    require'bufferline'.setup {
      -- 好みの設定をここに書く
    }
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map('n', '<C-j>', '<Cmd>BufferPrevious<CR>', opts)--Ctrl+jで前のBufferに移動
    map('n', '<C-k>', '<Cmd>BufferNext<CR>', opts)--Ctrl+kで次のBufferに移動
    -- Close buffer
    map('n', '<leader>e', '<Cmd>BufferClose<CR>', opts) --<leader>+eでBufferを削除
  end
}
