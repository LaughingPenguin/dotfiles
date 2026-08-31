return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({ "python" })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "python" },
			callback = function() vim.treesitter.start() end,
		})
	end,
}
