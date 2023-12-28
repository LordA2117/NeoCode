-- Which key (not needed)

-- neoconf (not needed)

-- gitsigns
require('gitsigns').setup() 

-- catppucin
vim.cmd("colorscheme catppuccin")

-- dashboard (already setup in the plugins.lua file)

-- mason.nvim
require("mason").setup()
require("mason-lspconfig").setup() -- setup for mason lspconfig
require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {}

-- nvim-cmp: Done separately for ease of editing


