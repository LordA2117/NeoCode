local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

	{"williamboman/mason.nvim"},
	{"williamboman/mason-lspconfig.nvim"},
	{"neovim/nvim-lspconfig"},
	{'hrsh7th/cmp-nvim-lsp',},
	{'hrsh7th/cmp-cmdline'},
	{'hrsh7th/nvim-cmp',},
	{'hrsh7th/cmp-path',},
	{'hrsh7th/cmp-buffer', },
	{'L3MON4D3/LuaSnip'},
	{'saadparwaiz1/cmp_luasnip'},
	{'onsails/lspkind.nvim'},
	{'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
	{'windwp/nvim-autopairs', event='InsertEnter', config=true},
	{'nvim-treesitter/nvim-treesitter', build=":TSUpdate"},
	{'nvim-tree/nvim-tree.lua', dependencies={'nvim-tree/nvim-web-devicons'}},
	{'akinsho/bufferline.nvim', version = "*", dependencies = {'nvim-tree/nvim-web-devicons'}},
	-- Telescope and plenary.nvim
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' }},
	-- colorschemes
	{ "AstroNvim/astrotheme", name="astrotheme" },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ..., name="gruvbox"},
	{"olimorris/onedarkpro.nvim", priority=1000},
	{"loctvl842/monokai-pro.nvim", name = "monokai"},
	-- colorscheme switcher
	{'zaldih/themery.nvim'},
	-- Dashboard
  {
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				-- config
				theme = 'doom',
				hide = {
					statusline,
					tabline,
					winbar
				},
				config={
					week_header = {
						enable = true,
					},
					center = {
						{
							icon = '  ',
							icon_hl = 'Title',
							desc = 'Find File                                 ',
							-- desc_hl = 'Title',
							key = 'f',
							-- keymap = 'SPC f f',
							key_hl = 'Number',
							-- key_format = ' %s', -- remove default surrounding `[]`
							action = "lua require('telescope.builtin').find_files()"
						},
						{
							icon = '  ',
							icon_hl = 'Title',
							desc = 'Live Grep',
							key = 'g',
							-- keymap = 'SPC f g',
							-- key_format = ' %s', -- remove default surrounding `[]`
							action = "lua require('telescope.builtin').live_grep()"
						},
						{
							icon = '  ',
							icon_hl = 'Title',
							desc = 'Explore Buffers',
							key = 'b',
							-- keymap = ''
							action = "lua require('telescope.builtin').buffers()"
						},
						{
							icon = '󰋖  ',
							icon_hl = 'Title',
							desc = 'Help Tags',
							key = 'h',
							-- keymap = ''
							action = "lua require('telescope.builtin').help_tags()"
						},
						{
							icon = '  ',
							icon_hl = 'Title',
							desc = 'Lazy Home',
							key = 'l',
							action = 'lua require("lazy").home()'
						}, 
						{
							icon = '  ',
							icon_hl = 'Title',
							desc = 'Sync Plugins',
							key = 's',
							action = 'lua require("lazy").sync()'
						},
						{
							icon = '  ',
							icon_hl = 'Title',
							desc = 'File Tree',
							key = 'e',
							action = 'lua vim.cmd(":NvimTreeToggle")'
						},
						{
							icon = '󰈆  ',
							icon_hl = 'Title',
							desc = 'Quit',
							key = 'q',
							action = 'lua vim.cmd(":q")'
						},
					},
					footer = {
						"⚡Made with 💖 by Bobby Smiles 🙂"
					},
				},
			}
		end,
		dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
	-- Toggle Terminal
	{'akinsho/toggleterm.nvim', version = "*", config=true},
	{
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
		ft = {"python", "c", "c++", "html", "css", "javascript", "lua", "java", "javascriptreact"},
	},
	-- Toggle comments easily with comment.nvim
	{'numToStr/Comment.nvim', opts={}},
	{'maxmellon/vim-jsx-pretty', ft="javascriptreact"},
	{
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    }
	},
	{
  "smjonas/inc-rename.nvim",
  config = function()
    require("inc_rename").setup()
  end,
	},
	{
    'MeanderingProgrammer/render-markdown.nvim',
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
		ft = {"markdown"}
	}
}
require("lazy").setup(plugins, opts)
