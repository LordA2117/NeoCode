require("toggleterm").setup {
	direction = 'float',
	shell = vim.o.shell,
	persist_mode = false,
	float_opts = {
		border = 'curved'
	},
}
