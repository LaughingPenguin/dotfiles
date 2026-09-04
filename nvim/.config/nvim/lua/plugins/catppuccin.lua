return { 
	{
		"catppuccin/nvim", 
		name = "catppuccin",
		lazy = "false",
		priority = 1000,
		config = function()

			require("catppuccin").setup({
				flavour = "auto",
				transparent_background = true,
				no_italic = true,
				custom_highlights = function(colors)
					return {
						NvimTreeNormal = { fg = "#ffffff" },
						["@string.documentation.python"] = { link = "Comment" },
						["@variable.python"] = { fg = "#ffffff" },
						["@variable.member.python"] = { fg = "#ffffff" },
					}
				end,
				color_overrides = {
					all = {
						text = "#ffffff",
					},
				},
			})
		end,
	},
}
