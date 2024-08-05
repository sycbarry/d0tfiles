return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = { "rust_analyzer", "gopls", "java-language-server", "lua-language-server", "clangd", "clang-format"},
  },
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    mason.setup({})
    mason_lspconfig.setup({
      "html", "gopls", "dockerls", "cssls", "pyre", "sqls", "bashls"
    })
  end,
}

