vim.g.mapleader = " "
vim.cmd(':set number')
vim.cmd(':set shiftwidth=2')
vim.cmd(':set tabstop=2')
vim.cmd('set cursorline')

-- Config on windows for ToggleTerm. Do not use this if you're on linux
vim.opt.shell = 'powershell.exe'
vim.opt.shellcmdflag = '-nologo -noprofile -ExecutionPolicy RemoteSigned -command'
vim.opt.shellxquote = ''
