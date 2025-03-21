local map = vim.keymap.set

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights" })
map("n", "<leader>x", "<CMD>bd<CR>", { desc = "Close buffer" })
map("i", "jk", "<Esc>")

-- Buffer navigation
map("n", "<C-h>", "<C-w>h", { desc = "Buffer to the left", noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { desc = "Buffer below", noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { desc = "Buffer above", noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { desc = "Buffer to the right", noremap = true, silent = true })

-- Telescope
local builtin = require("telescope.builtin")
map("n", "<leader>f", builtin.find_files, { desc = "Find files" })
map("n", "gs", builtin.lsp_document_symbols, { desc = "Find symbols" })
map("n", "gS", builtin.lsp_workspace_symbols, { desc = "Workspace symbols" })
map("n", "g/", builtin.live_grep, { desc = "Live grep" })

-- LSP
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "cd", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "gy", vim.lsp.buf.type_definition, { desc = "Go to symbol definition" })
map("n", "g.", vim.lsp.buf.code_action, { desc = "Clear highlights" })
