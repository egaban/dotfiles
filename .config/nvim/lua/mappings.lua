require "nvchad.mappings"

local map = vim.keymap.set
local del = vim.keymap.del

map("i", "jk", "<Esc>")
map("n", "-", "<Cmd>Oil<CR>")

-- Code companion
map({ "n", "v" }, "<Leader>cc", "<Cmd>CodeCompanion<CR>", { desc = "Code Companion" })
map("n", "<Leader>ca", "<Cmd>CodeCompanionActions<CR>", { desc = "Code Companion Action" })

-- Fixes NVChad problems with disabled tabs
del("n", "<TAB>")
map("n", "<Leader>x", "<Cmd>bd<CR>", { desc = "Close current buffer." })

-- LSP
map("n", "gA", vim.lsp.buf.references, { desc = "All references" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "cd", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "gy", vim.lsp.buf.type_definition, { desc = "Go to symbol definition" })
map("n", "g.", vim.lsp.buf.code_action, { desc = "Clear highlights" })

-- Telescope
local builtin = require "telescope.builtin"
map("n", "gs", builtin.lsp_document_symbols, { desc = "Find symbols" })
map("n", "gS", builtin.lsp_workspace_symbols, { desc = "Workspace symbols" })
map("n", "g/", builtin.live_grep, { desc = "Live grep" })
