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
				theme = 'hyper',
				hide = {
					statusline,
					tabline,
					winbar
				},
				config={
					week_header = {
						enable = true,
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
	{'maxmellon/vim-jsx-pretty', ft="javascriptreact"}
}
require("lazy").setup(plugins, opts)
