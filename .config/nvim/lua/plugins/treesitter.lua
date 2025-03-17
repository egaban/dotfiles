return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "VeryLazy",
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = { enable = true, use_languagetree = true },
			indent = { enable = true },
		})
	end,
}
