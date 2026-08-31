return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			mode = "buffers",
			always_show_bufferline = true,
			diagnostics = "nvim_lsp",
			separator_style = "thin",
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					separator = true,
					text_align = "left",
					padding = 0
				},
			},
		},
	},
	config = function(_, opts)
		require("bufferline").setup(opts)

		local function sync_offset_separator()
			if vim.fn.hlexists("NvimTreeWinSeparator") == 1 then
				vim.api.nvim_set_hl(
					0,
					"BufferLineOffsetSeparator",
					vim.api.nvim_get_hl(0, { name = "NvimTreeWinSeparator" })
				)
			end
		end

		sync_offset_separator()
		vim.api.nvim_create_autocmd("ColorScheme", { callback = sync_offset_separator })
		vim.keymap.set("n", "H", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
		vim.keymap.set("n", "L", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
	end,
}

