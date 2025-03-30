require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local del = vim.keymap.del

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<Esc>")
map("n", "-", "<Cmd>Oil<CR>")
map("n", "g.", vim.lsp.buf.code_action, { desc = "Code Action" })
map("n", "<Leader>x", "<Cmd>bd<CR>", { desc = "Close current buffer." })
map({ "n", "v" }, "<Leader>cc", "<Cmd>CodeCompanion<CR>", { desc = "Code Companion" })
map("n", "<Leader>ca", "<Cmd>CodeCompanionActions<CR>", { desc = "Code Companion Action" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

del("n", "<TAB>")
