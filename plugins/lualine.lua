local plugin = require("require-plugin")

return {
  "nvim-lualine/lualine.nvim",
  name = "LuaLine",
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
