return {
  'stevearc/conform.nvim',
  event = "VeryLazy",
  opts = {
  formatters_by_ft = {
      lua = { "stylua" },
    python = { "isort", "black" },
      rust = { "rustfmt", lsp_format = "fallback" },
    },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "fallback",
  },
  },
  -- config = function(_, opts) 
  --   require("conform").setup(opts)
  -- end
}
