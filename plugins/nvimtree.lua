local plugin = require("require-plugin")

return {
  "nvim-tree/nvim-tree.lua",
  name = "Neovim pretty tree",
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
