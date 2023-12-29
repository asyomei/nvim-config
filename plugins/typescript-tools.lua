local plugin = require("require-plugin")

return {
  "pmizio/typescript-tools.nvim",
  opts = {
    settings = {
      expose_as_code_action = {
        "add_missing_imports",
      },
    },
  },
  dependencies = {
    plugin("deps/plenary"),
    plugin("lspconfig"),
  },
}
