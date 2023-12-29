local plugin = require("require-plugin")

return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    function(name)
      require("lspconfig")[name].setup({})
    end,
    -- use typescript-tools
    ["tsserver"] = function() end,
  },
  config = function(_, opts)
    require("mason-lspconfig").setup()
    require("mason-lspconfig").setup_handlers(opts)
  end,
  dependencies = {
    plugin("mason"),
  },
}
