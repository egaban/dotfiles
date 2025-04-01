-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "lua_ls", "pyright", "rust_analyzer" }
local nvlsp = require "nvchad.configs.lspconfig"

-- Custom on_attach function to unset <Leader>ca mapping
local function on_attach(client, bufnr)
  -- Call the original on_attach function
  nvlsp.on_attach(client, bufnr)

  -- Unset the <Leader>ca mapping
  vim.keymap.del("n", "<Leader>ca", { buffer = bufnr })
end

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- texlab build on save
lspconfig.texlab.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    texlab = {
      build = {
        onSave = true,
      },
    },
  },
}
