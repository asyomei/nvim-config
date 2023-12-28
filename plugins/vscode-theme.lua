return {
  "mofiqul/vscode.nvim",
  name = "VSCode theme",
  priority = 1000,
  opts = {
    italic_comments = false,
    disable_nvimtree_bg = true,
  },
  config = function(_, opts)
    vscode_theme = require("vscode")
    vscode_theme.setup(opts)
    vscode_theme.load()
  end,
}
