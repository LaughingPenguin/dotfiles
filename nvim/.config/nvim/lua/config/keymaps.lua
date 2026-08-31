local map = vim.keymap.set

map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to window below" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to window above" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
