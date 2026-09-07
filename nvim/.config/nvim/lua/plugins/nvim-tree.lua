return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("nvim-tree").setup({
			view = { width = 30 },
			renderer = {
				group_empty = true,
				-- indent_markers = { enable = true },
				indent_width = 2,
				root_folder_modifier = ":t",
				icons = {
					show = {
						folder_arrow = false,
					},
				},
			},
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
