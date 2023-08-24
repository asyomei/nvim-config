local plugin = require("require-plugin")

return {
  "ziontee113/icon-picker.nvim",
  name = "Icon picker",
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
  config = function(_, opts)
    local icon_picker = require("icon-picker")
    icon_picker.setup(opts)
  end,
  dependencies = {
    plugin("deps/dressing"),
  },
}
