require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local del = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-h>",  "<cmd> TmuxNavigateLeft<CR>")
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>" )
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>" )
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")
map("i", "jk", "<ESC>")

del("n", ";")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
