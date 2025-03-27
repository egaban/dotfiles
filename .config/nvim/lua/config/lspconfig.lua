local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = {
	"lua_ls",
	"pyright",
	"rust_analyzer",
}

for _, server in ipairs(servers) do
	lspconfig[server].setup({ capabilities = capabilities })
end

lspconfig["texlab"].setup({
	settings = {
		texlab = {
			build = {
				onSave = true,
			},
		},
	},
	capabilities = capabilities,
})
