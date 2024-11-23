return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require "harpoon"
    local map = vim.keymap.set

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    map("n", "<leader>a", function()
      harpoon:list():add()
    end)
    map("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    for i = 1, 5 do
      map("n", "<leader>" .. i, function()
        harpoon:list():select(i)
      end)
    end
  end,
}
