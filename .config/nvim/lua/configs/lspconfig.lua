-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "rust_analyzer", "pyright", "ruff" }
local nvlsp = require "nvchad.configs.lspconfig"
local custom_on_attach = function(client, bufnr)
  nvlsp.on_attach(client, bufnr)
  vim.keymap.set("n", "<leader>r", require "nvchad.lsp.renamer", { buffer = bufnr, desc = "LSP NvRenamer" })
  vim.keymap.del("n", "<leader>ra", { buffer = bufnr })
end

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = custom_on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
