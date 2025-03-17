local lspconfig = require("lspconfig")

local servers = {
	"rust_analyzer",
	"pyright",
}

for _, server in ipairs(servers) do
	lspconfig[server].setup({})
end
