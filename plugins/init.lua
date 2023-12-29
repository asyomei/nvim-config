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
  plugin("mason"),
  plugin("mason-lspconfig"),
  plugin("lspconfig"),
  plugin("cmp"),
  plugin("typescript-tools"),
  plugin("formatter"),
  plugin("mkdir"),
  plugin("comment"),
  plugin("git"),
  plugin("icon-picker"),
})
