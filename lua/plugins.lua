local plugins = {
	-- Appearance
	{"folke/which-key.nvim"},
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	{"folke/neodev.nvim"},
	{"lewis6991/gitsigns.nvim", ft={"python"}},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{"nvimdev/dashboard-nvim", event = VimEnter, config = function()
		require("dashboard").setup{
			-- config
		}
		end,
	dependencies = {{"nvim-tree/nvim-web-devicons"}},
	},
	-- LSP
	{"williamboman/mason.nvim"},
	{"williamboman/mason-lspconfig.nvim"},
	{"neovim/nvim-lspconfig"},
	-- Code completion
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
	{'hrsh7th/cmp-cmdline'},
	{'hrsh7th/nvim-cmp'},
	-- Snippet engine (luasnip)
	{'L3MON4D3/LuaSnip'},
	{'saadparwaiz1/cmp_luasnip'},
	{'nvim-lualine/lualine.nvim', dependencies = {'nvim-tree/nvim-web-devicons'}},
	-- Vscode like icons for autocomplete
	{"onsails/lspkind.nvim"},
	-- File tree
	{"nvim-tree/nvim-tree.lua"},
	-- Tabs
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
	-- Treesitter for syntax highlighting
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	-- Vscode like winbar
	{
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = {
    -- configurations go here
  },
	},
	{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
	},
}

	


require("lazy").setup(plugins)

-- TODO: Setup all the plugins
