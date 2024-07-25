return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      -- nvim の設定を再読み込みした時に自動でインストールするLSPサーバ
      ensure_installed = {
        "tsserver",
        "lua_ls",
      }
    })

    require("mason-lspconfig").setup_handlers {
      function(server_name)
        require("lspconfig")[server_name].setup {}
      end,
    }
  end,
}
