vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.opt.~~~ を set.~~~ と書けるようにする
local set = vim.opt

if vim.api.nvim_buf_get_option(0, 'modifiable') then
  vim.scriptencoding = 'utf-8'
  set.encoding = 'utf-8'
  set.fileencoding = 'utf-8'
end

set.termguicolors = true
set.number = true
set.showmatch = true
set.splitright = true
set.splitbelow = true
set.autowrite = true
set.autochdir = true
set.mouse = 'a'
set.clipboard = 'unnamedplus'
set.swapfile = false
set.ignorecase = true
set.smartcase = true
set.completeopt = 'menuone,noinsert,noselect'
set.undofile = true
set.undodir = vim.fn.stdpath("data") .. "undo"
set.expandtab = true
set.shiftwidth = 2
set.tabstop = 2
set.autoindent = true
set.wrap = true
set.cursorline = true

