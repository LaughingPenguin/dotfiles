return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	keys = {
		{ "]c", function() require("gitsigns").next_hunk() end, desc = "Next hunk" },
		{ "[c", function() require("gitsigns").prev_hunk() end, desc = "Previous hunk" },
		{ "<leader>hr", function() require("gitsigns").reset_hunk() end, desc = "Reset hunk" },
	},
}
