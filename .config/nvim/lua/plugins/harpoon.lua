return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "BufEnter",
  config = function()
    require "configs.harpoon"
  end,
}
