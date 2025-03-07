require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local del = vim.keymap.del

-- remove default ';' behavior from NvChad
map("n", ";", ":", { desc = "CMD enter command mode" })
del("n", ";")

-- remove terminal shortcuts
del({"n", "t"}, "<A-v>")
del({"n", "t"}, "<A-h>")
del({"n", "t"}, "<A-i>")

-- tmux navigation
map("n", "<C-h>",  "<cmd> TmuxNavigateLeft<CR>")
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>" )
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>" )
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")
map("i", "jk", "<ESC>")

map("n", "<leader>sc", "<cmd> SlimeConfig<CR>")

map("n", "-", "<cmd> Oil<CR>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
