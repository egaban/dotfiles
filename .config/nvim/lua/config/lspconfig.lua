local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = {
	"rust_analyzer",
	"texlab",
	"pyright",
}

for _, server in ipairs(servers) do
	lspconfig[server].setup({ capabilities = capabilities })
end
