local plugin = require("require-plugin")

return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = "vscode",
    },
  },
  config = true,
  dependencies = {
    plugin("deps/dev-icons"),
  },
}