vim.opt.nu = true -- line numbers

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- tabs on js
vim.cmd[[
  autocmd FileType javascript,typescript,typescriptreact setlocal shiftwidth=2
  autocmd FileType javascript,typescript,typescriptreact setlocal softtabstop=2
  autocmd FileType javascript,typescript,typescriptreact setlocal tabstop=2
]]

-- c configuration
vim.cmd([[
    autocmd BufRead,BufNewFile *.h set filetype=c
    autocmd FileType c setlocal shiftwidth=4
    autocmd FileType c setlocal softtabstop=4
    autocmd FileType c setlocal tabstop=4
]])

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
-- vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
