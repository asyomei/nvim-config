local plugin = require("require-plugin")

return {
  "akinsho/bufferline.nvim",
  version = "*",
  config = true,
  dependencies = {
    plugin("deps/dev-icons"),
  },
}