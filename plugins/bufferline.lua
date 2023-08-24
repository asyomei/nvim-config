local plugin = require("require-plugin")

return {
  "akinsho/bufferline.nvim",
  name = "BufferLine",
  version = "*",
  config = true,
  dependencies = {
    plugin("deps/dev-icons"),
  },
}
