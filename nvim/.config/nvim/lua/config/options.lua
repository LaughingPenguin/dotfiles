local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.splitbelow = true
opt.splitright = true
opt.wrap = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.clipboard = "unnamedplus"
opt.scrolloff = 999
opt.virtualedit = "block"
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.fillchars:append({ eob = " " })
