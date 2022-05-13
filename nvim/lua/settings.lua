vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.syntax = "ON"

vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.colorcolumn = "80"

vim.g.t_Co = 256

vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.encoding = "UTF-8"
vim.opt.wrap = false 
vim.opt.backup = false 

vim.opt.wildignore = {'*/node_modules/*', '*/tmp/*'}


require('onedark').load()

require('nvim-autopairs').setup{}

vim.g.nvim_tree_respect_buf_cwd = 1
require("nvim-tree").setup({
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
})

require('telescope').load_extension('projects')



vim.g.dashboard_default_executive ='telescope'


vim.cmd[[
	augroup highlight_yank
	autocmd!
		au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=1200})
	augroup END
]]
