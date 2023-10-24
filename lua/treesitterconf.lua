local configs = require "nvim-treesitter.configs"

configs.setup({
  ensure_installed = {
    "bash",
    "comment",
    "css",
    "html",
    "javascript",
    "json",
    "json5",
    "jsonc",
    "lua",
    "markdown",
    "regex",
    "ruby",
    "scss",
    "tsx",
    "typescript",
    "yaml",
  },
  highlight = { enable = true },
  indent = { enable = true },
  autotag = {
    enable = true,
    enable_rename = true,
    enable_close = true,
    enable_close_on_slash = true,
    filetypes = { "html" , "xml" },
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
})
