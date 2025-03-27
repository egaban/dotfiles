local map = vim.keymap.set

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights" })
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Escape terminal mode" })
map("n", "<leader>x", "<CMD>bd<CR>", { desc = "Close buffer" })
map("i", "jk", "<Esc>")

-- Source current file
map("n", "<leader>rs", "<CMD>source %<CR>", { desc = "Source current file" })

-- Navigation
map({ "n", "v" }, "gh", "0", { desc = "Go to line start", noremap = true })
map({ "n", "v" }, "gl", "$", { desc = "Go to line end", noremap = true })

-- Buffer navigation
map("n", "<C-h>", "<C-w>h", { desc = "Buffer to the left", noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { desc = "Buffer below", noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { desc = "Buffer above", noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { desc = "Buffer to the right", noremap = true, silent = true })

-- Telescope
local builtin = require("telescope.builtin")
map("n", "<leader>f", builtin.find_files, { desc = "Find files" })
map("n", "<leader>sh", builtin.help_tags, { desc = "Find help" })
map("n", "<leader>sk", builtin.keymaps, { desc = "Find keymap" })
map("n", "<leader>ss", builtin.builtin, { desc = "Telescope" })
map("n", "gs", builtin.lsp_document_symbols, { desc = "Find symbols" })
map("n", "gS", builtin.lsp_workspace_symbols, { desc = "Workspace symbols" })
map("n", "g/", builtin.live_grep, { desc = "Live grep" })

-- LSP (inspired by zed)
map("n", "gA", vim.lsp.buf.references, { desc = "All references" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "cd", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "gy", vim.lsp.buf.type_definition, { desc = "Go to symbol definition" })
map("n", "g.", vim.lsp.buf.code_action, { desc = "Clear highlights" })
