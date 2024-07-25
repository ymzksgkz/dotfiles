return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    -- filer behavior
    require('neo-tree').setup({
      window = {
        mappings = {
          -- default shortcuts: https://github.com/nvim-neo-tree/neo-tree.nvim?tab=readme-ov-file#longer-example-for-packer
          --["<CR>"] = "open_vsplit",
        }
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignore = false,
          hide_node_modules = false,
        },
      }
    })


    -- shortcut(Ctrl+1)
    vim.api.nvim_set_keymap("n", "<C-1>", "<cmd>Neotree float toggle<CR>", {noremap = true, silent = true})
  end
}
