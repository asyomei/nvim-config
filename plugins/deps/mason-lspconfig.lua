local plugin = require("require-plugin")

return {
  "williamboman/mason-lspconfig.nvim",
  name = "Mason + LSP config",
  config = true,
  dependencies = {
    plugin("deps/lspconfig"),
  },
}
