return {
  "olimorris/codecompanion.nvim",
  config = function()
    require "configs.companion"
  end,
  event = "BufEnter",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}
