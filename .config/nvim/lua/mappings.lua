require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local del = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "gs", "<CMD>Telescope lsp_document_symbols<CR>", { desc = "File symbols" })
map("n", "gS", "<CMD>Telescope lsp_dynamic_workspace_symbols<CR>", { desc = "Workspace symbols" })
map("n", "gy", vim.lsp.buf.type_definition, { desc = "Go to type definition" })

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Fixes disabled tabufline annoying <C-i> behavior
del("n", "<TAB>")

-- Fixes buffer close, another tabufline bug
map("n", "<leader>x", "<CMD>bd<CR>")

-- LSP
map("n", "<leader>ls", "<CMD>LspRestart<CR>", { desc = "LSP Restart" })

-- Removes <leader>rn, so <leader>r is faster
del("n", "<leader>rn")
