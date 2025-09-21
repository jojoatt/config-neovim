return {
  "mason-org/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")
    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        },
      },
    })

    mason_lspconfig.setup({
      -- list of server for mason to install
      ensure_installed = {
        "ts_ls",
        "lua_ls",
        "clangd",
        "ansiblels",
        "bashls",
        "cmake",
        "docker_compose_language_service",
        "dockerls",
        "docker_language_server",
        "groovyls",
        "pyright",
        "pylsp",
        "terraformls",
        "eslint"
      },
    })
  end
}
