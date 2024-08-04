local plugin = require("require-plugin")

return {
  "nvim-tree/nvim-tree.lua",
  cmd = {
    "NvimTreeOpen",
    "NvimTreeClose",
    "NvimTreeToggle",
    "NvimTreeFocus",
  },
  keys = {
    {"q", "<cmd>NvimTreeToggle<cr>"},
  },
  config = true,
  dependencies = {
    plugin("deps/dev-icons"),
  },
}