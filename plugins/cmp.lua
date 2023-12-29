local plugin = require("require-plugin")

return {
  "hrsh7th/nvim-cmp",
  config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")

    cmp.setup({
      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol",
          maxwidth = 50,
          ellipsis_char = "...",
          symbol_map = {
            Class = " ",
            Color = " ",
            Constant = " ",
            Constructor = " ",
            Enum = " ",
            EnumMember = " ",
            Field = "󰄶 ",
            File = " ",
            Folder = " ",
            Function = "ƒ ",
            Interface = "󰜰",
            Keyword = "󰌆 ",
            Method = "ƒ ",
            Module = "󰏗 ",
            Property = " ",
            Snippet = "󰘍 ",
            Struct = " ",
            Text = " ",
            Unit = " ",
            Value = "󰎠 ",
            Variable = " ",
          },
        }),
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "path" },
      }, {
        { name = "buffer" },
      }),
    })

    -- Use buffer source for `/` and `?`
    -- (if you enabled `native_menu`, this won't work anymore)
    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" },
      },
    })

    -- Use cmdline & path source for ':'
    -- (if you enabled `native_menu`, this won't work anymore)
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        { name = "cmdline" },
      })
    })
  end,
  dependencies = {
    plugin("lspconfig"),
    plugin("deps/lspkind"),
    plugin("deps/lsp_signature"),
    plugin("deps/cmp-lsp"),
    plugin("deps/cmp-buffer"),
    plugin("deps/cmp-path"),
    plugin("deps/cmp-cmdline"),
  },
}
