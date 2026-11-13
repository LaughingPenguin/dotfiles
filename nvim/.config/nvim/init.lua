vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("config.options")
require("config.keymaps")

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	checker = { enabled = true },
})

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
	pattern = "*",
	callback = function()
		if vim.fn.mode() ~= 'c' then
			vim.cmd("checktime")
		end
	end,
})

local function apply_transparent_background()
	local groups = {
		"Normal",
		"NormalFloat",
		"SnacksNormal",
		"SnacksNormalNC",
		"SnacksPicker",
		"SnacksPickerInput",
		"SnacksPickerList",
		"SnacksPickerPreview",
		"SnacksPickerBox",
	}
	for _, group in ipairs(groups) do
		local highlight = vim.api.nvim_get_hl(0, { name = group })
		highlight.bg = "none"
		highlight.ctermbg = "none"
		vim.api.nvim_set_hl(0, group, highlight)
	end
end

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = apply_transparent_background,
})

apply_transparent_background()
