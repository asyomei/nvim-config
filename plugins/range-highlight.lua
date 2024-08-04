 local plugin = require("require-plugin")
 
 return {
  "winston0410/range-highlight.nvim",
  config = true,
  dependencies = {
    plugin "deps/cmd-parser",
  },
}