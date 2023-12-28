return {
  "ray-x/lsp_signature.nvim",
  name = "Function signature",
  opts = {
    handler_opts = {
      border = "none",
    },
  },
  config = function(_, opts)
    require("lsp_signature").setup(opts)
  end
}
