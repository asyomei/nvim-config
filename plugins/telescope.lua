local plugin = require("require-plugin")

return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  cmd = "Telescope",
  keys = {
    {"ff", "<cmd>Telescope find_files<cr>"},
    {"fg", "<cmd>Telescope live_grep<cr>"},
    {"fb", "<cmd>Telescope buffers<cr>"},
    {"fh", "<cmd>Telescope help_tags<cr>"},
    {"fc", "<cmd>Telescope current_buffer_fuzzy_find<cr>"},
  },
  dependencies = {
    plugin("deps/plenary"),
    plugin("deps/dressing"),
  },
}
