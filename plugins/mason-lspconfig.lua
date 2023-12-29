local plugin = require("require-plugin")

return {
  "williamboman/mason-lspconfig.nvim",
  opts = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    return {
      function(name)
        lspconfig[name].setup({
          capabilities = capabilities,
        })
      end,
      -- use typescript-tools
      tsserver = function() end,
      jsonls = function()
        lspconfig.jsonls.setup({
          capabilities = capabilities,
          settings = {
            json = {
              schemas = require("schemastore").json.schemas(),
              validate = { enable = true },
            },
          },
        })
      end,
      yamlls = function()
        lspconfig.yamlls.setup({
          capabilities = capabilities,
          settings = {
            yaml = {
              schemaStore = {
                enable = false,
                url = "",
              },
              schemas = require("schemastore").yaml.schemas(),
            },
          },
        })
      end,
    }
  end,
  config = function(_, opts)
    require("mason-lspconfig").setup()
    require("mason-lspconfig").setup_handlers(opts)
  end,
  dependencies = {
    plugin("mason"),
    plugin("cmp"),
    plugin("deps/schemastore"),
  },
}
