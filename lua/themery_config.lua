-- Minimal config
require("themery").setup({
	-- themeConfigFile = "C:/Users/abhin/AppData/Local/nvim/lua/theme.lua", -- Described below
	livePreview = true, -- Apply theme while browsing. Default to true.
	themes = {
		{
			name = "Gruvbox Dark",
			colorscheme = "gruvbox",
			before = [[
				vim.o.background = "dark" -- or "light" for light mode
			]]
		},

		{
			name = "AstroTheme",
			colorscheme = "astrotheme",
			before = [[
				require("astrotheme").setup({
					colorscheme = "astrodark"
				})
			]]
		},

		{
			name = "Catppuccin",
			colorscheme = "catppuccin",
			before = [[
				require("catppuccin").setup({
					flavour = "mocha"
				})
			]]
		},

		{
			name = "Monokai",
			colorscheme = "monokai-pro",
			before = [[
				require("monokai-pro").setup()
			]]
		},

		{
			name = "One Dark Pro",
			colorscheme = "onedark",
		},

		{
			name = "Github Theme Colorblind",
			colorscheme = "github_dark_colorblind",
			before = [[
			require("github-theme").setup()
			]]
		}

	}
})
