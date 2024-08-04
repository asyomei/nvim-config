local lazy = require("lazy")
local plugin = require("require-plugin")

lazy.setup({
  plugin("vscode-theme"),
  plugin("bufferline"),
  plugin("lualine"),
  plugin("nvimtree"),
  plugin("treesitter"),
  plugin("autopairs"),
  plugin("coc"),
  plugin("mkdir"),
  plugin("comment"),
  plugin("git"),
  plugin("indent-blankline"),
  plugin("range-highlight"),
})
