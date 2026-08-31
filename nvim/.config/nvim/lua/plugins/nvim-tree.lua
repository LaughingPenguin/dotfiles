return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("nvim-tree").setup({
			actions = {
				remove_file = {
					close_window = false,
				},
			},
			trash = {
				cmd = "trash",
			},
			filters = {
				git_ignored = true,
			},
		})

		vim.keymap.set("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
	end,
}
