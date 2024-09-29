local opts = {silent=true}

-- Filetree
vim.keymap.set('n', '<leader>ev', ':NvimTreeToggle<cr>', opts);
vim.keymap.set('n', '<leader>ef', ':NvimTreeFocus<cr>', opts);

-- Buffer management
vim.keymap.set('n', '<leader>bn', ':bnext<cr>', opts)
vim.keymap.set('n', '<leader>bp', ':bprevious<cr>', opts)

-- Terminal
vim.keymap.set('n', '<leader>tm', ':ToggleTerm<cr>', opts)
