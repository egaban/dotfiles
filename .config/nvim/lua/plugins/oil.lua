return {
  "stevearc/oil.nvim",
  -- Optional dependencies
  event = "BufEnter",
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  config = function()
    require("oil").setup()
  end,
}
