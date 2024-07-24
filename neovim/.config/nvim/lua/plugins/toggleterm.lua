return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      local Terminal = require('toggleterm.terminal').Terminal

      -- lazygit(\+lag)
      local lazygit = Terminal:new({
        cmd = "lazygit",
        hidden = true,
        direction = "float",
        float_opts = {
          border = "single"
        }
      })
      function _lazygit_toggle()
        lazygit:toggle()
      end
      vim.api.nvim_set_keymap("n", "<leader>lag", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

      
      -- lazydocker(\+lad)
      local lazydocker = Terminal:new({
        cmd = "lazydocker",
        hidden = true,
        direction = "float",
        float_opts = {
          border = "single"
        }
      })
      function _lazydocker_toggle()
        lazydocker:toggle()
      end
      vim.api.nvim_set_keymap("n", "<leader>lad", "<cmd>lua _lazydocker_toggle()<CR>", {noremap = true, silent = true})


      -- Terminal(\\)
      local shell = Terminal:new({
        cmd = "zsh",
        hidden = true,
        -- direction = "float",
        direction = "float",
        float_opts = {
          border = "single",
        }
      })

      function _shell_toggle()
        shell:toggle()
      end

      vim.api.nvim_set_keymap("n", "<leader><leader>", "<cmd>lua _shell_toggle()<CR>", {noremap = true, silent = true})
    end
  }
}

