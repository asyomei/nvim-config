return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {
    map_cr = false,
  },
  config = function(_, opts)
    local autopairs = require("nvim-autopairs")
    autopairs.setup(opts)
    _G.autopairs_coc_adapter_cr = function()
      if vim.fn["coc#pum#visible"]() ~= 0 then
        return vim.fn["coc#pum#confirm"]()
      end
      return autopairs.autopairs_cr()
    end
    vim.api.nvim_set_keymap(
      "i",
      "<cr>",
      "v:lua.autopairs_coc_adapter_cr()",
      { expr = true, noremap = true }
    )
  end,
}