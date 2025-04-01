local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black", "isort" },
  },

  format_after_save = {
    -- These options will be passed to conform.format()
    lsp_fallback = true,
  },
}

return options
