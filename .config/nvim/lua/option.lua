vim.g.autoformat = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.guicursor = ""
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true

vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.wrap = false
vim.opt.mouse = ""
vim.opt.scrolloff = 10
vim.opt.termguicolors = true

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.opt_local.conceallevel = 2
