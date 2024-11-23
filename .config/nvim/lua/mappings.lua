require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local del = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "gy", vim.lsp.buf.type_definition, { desc = "Go to type definition" })

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Fixes disabled tabufline annoying <C-i> behavior
del("n", "<TAB>")
