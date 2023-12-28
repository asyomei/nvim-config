local lazy = require("lazy")
local plugin = require("require-plugin")

lazy.setup({
  plugin("vscode-theme"),
  plugin("bufferline"),
  plugin("lualine"),
  plugin("nvimtree"),
  plugin("telescope"),
  plugin("treesitter"),
  plugin("autopairs"),
  plugin("cmp"),
  plugin("mason"),
  plugin("typescript-tools"),
  plugin("mkdir"),
  plugin("comment"),
  plugin("git"),
  plugin("icon-picker"),
})
