vim.g.mapleader = " "

vim.cmd("set number") -- Line numbers
vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")

vim.cmd("set cursorline")
vim.cmd("set termguicolors")

local opts = {noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>ev", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>ef", ":NvimTreeFocus<cr>", opts)
keymap("n", "<C-n>", ":tabnew<cr>", opts)
keymap("n", "<leader>tc", ":bd<cr>", opts)
keymap("n", "<leader>tm", ":terminal<cr>", opts) 
keymap("n", "<S-Tab>", ":bp<cr>", opts)

vim.o.shell = "powershell"
