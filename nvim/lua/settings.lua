vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd [[autocmd FileType javascript,typescript,javascriptreact,typescriptreact setlocal shiftwidth=2]]

vim.o.termguicolors = true

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

vim.opt.nu = true

vim.opt.wrap = false
vim.opt.whichwrap = vim.opt.whichwrap + "h"
vim.opt.whichwrap = vim.opt.whichwrap + "l"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.updatetime = 50

-- prevent exiting insert mode from moving the cursor back one char
vim.cmd("autocmd InsertLeave * :normal! `^")
vim.cmd("set virtualedit=onemore")

-- map U to redo
vim.api.nvim_set_keymap('n', 'U', '<C-r>', { noremap = true })

-- J and K for moving blocks around in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J now keeps you in the beginning of the line
vim.keymap.set("n", "J", "mzJ`z")

-- actions keep my cursor in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- <leader>y and p to copy/paste into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
