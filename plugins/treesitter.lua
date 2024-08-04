local plugin = require("require-plugin")

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = function()
    local rainbow = require("ts-rainbow")
    return {
      highlight = { enable = true },
      rainbow = {
        enable = true,
        query = "rainbow-parens",
        strategy = rainbow.strategy.global,
      },
    }
  end,
  config = function(_, opts)
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup(opts)
  end,
  dependencies = {
    plugin("deps/rainbow-treesitter"),
  },
}