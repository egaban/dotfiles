return {
	"stevearc/conform.nvim",
	event = "VeryLazy",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
			json = { "prettier" },
		},
		format_after_save = {
			lsp_format = "fallback",
		},
	},
}
