local map = vim.keymap.set

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights" })
map("i", "jk", "<Esc>")

-- Telescope
local builtin = require("telescope.builtin")
map("n", "<leader>f", builtin.find_files, { desc = "Find files" })
map("n", "gs", builtin.lsp_document_symbols, { desc = "Find symbols" })
map("n", "gS", builtin.lsp_workspace_symbols, { desc = "Workspace symbols" })

-- LSP
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "cd", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "gy", vim.lsp.buf.type_definition, { desc = "Go to symbol definition" })
