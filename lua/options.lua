require "nvchad.options"

-- add yours here!

local o = vim.o
local g = vim.g

g.slime_target = "tmux"
g.slime_python_ipython = 1

o.rnu = true
o.autochdir = true
-- o.cursorlineopt ='both' -- to enable cursorline!
