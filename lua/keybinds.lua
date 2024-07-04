local opts = {silent=true}

vim.keymap.set('n', '<leader>ev', ':NvimTreeToggle<cr>', opts);
vim.keymap.set('n', '<leader>ef', ':NvimTreeFocus<cr>', opts);

vim.keymap.set('n', '<leader>bn', ':bnext<cr>', opts)
vim.keymap.set('n', '<leader>bp', ':bprevious<cr>', opts)


