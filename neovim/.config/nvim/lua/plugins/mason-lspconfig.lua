return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      -- nvim の設定を再読み込みした時に自動でインストールするLSPサーバ
      ensure_installed = {
        -- lsp list
        -- https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers
        "lua_ls",
        "terraformls",
        "tflint"
      }
    })

    require("mason-lspconfig").setup_handlers {
      function(server_name)
        require("lspconfig")[server_name].setup {}
      end,
    }
  end,
}
