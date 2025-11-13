local opts = { silent = true }

-- Filetree
vim.keymap.set("n", "<leader>ev", ":NvimTreeToggle<cr>", opts)
vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<cr>", opts)

-- Buffer management
vim.keymap.set("n", "<leader>bn", ":bnext<cr>", opts)
vim.keymap.set("n", "<leader>bp", ":bprevious<cr>", opts)

-- Terminal
vim.keymap.set("n", "<leader>tm", ":ToggleTerm<cr>", opts)

-- Copy to clipboard neovim
vim.keymap.set("v", "<leader>cc", '"+y', opts)

-- Inc-rename keybinds
vim.keymap.set("n", "<leader>rn", ":IncRename ", opts)

-- Render Markdown
vim.keymap.set("n", "<leader>mv", ":RenderMarkdown toggle <cr>", opts)

-- Quality of life updates
vim.keymap.set("n", "<leader>/", ":noh<cr>", opts)

-- Triforce plugins
vim.keymap.set("n", "<leader>tp", ":lua require(\"triforce\").show_profile()<cr>")
vim.keymap.set("n", "<leader>ts", ':lua require("triforce").get_stats()<cr>')
