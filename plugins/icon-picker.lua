local plugin = require("require-plugin")

return {
  "ziontee113/icon-picker.nvim",
  cmd = {
    "IconPickerNormal",
    "IconPickerYank",
    "IconPickerInsert",
  },
  keys = {
    {"fi", "<cmd>IconPickerNormal<cr>"},
    {"fy", "<cmd>IconPickerYank<cr>"},
    {"<M-i>", "<cmd>IconPickerInsert<cr>", mode = "i"},
  },
  opts = {
    disable_legacy_commands = true,
  },
  config = true,
  dependencies = {
    plugin("deps/dressing"),
  },
}
