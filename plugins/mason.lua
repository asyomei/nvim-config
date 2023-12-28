local plugin = require("require-plugin")

return {
  "williamboman/mason.nvim",
  name = "Mason",
  config = true,
  dependencies = {
    plugin("deps/mason-lspconfig"),
  },
}
