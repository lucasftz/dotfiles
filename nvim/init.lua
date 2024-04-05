-- bootstrap lazy.nvim
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

require("settings")
require("lazy").setup("plugins")

local function change_theme(theme)
    vim.cmd("colorscheme " .. theme)
    require('lualine').setup({ options = { theme = theme } })
end

change_theme("nord")
vim.cmd([[command! -nargs=1 Theme lua require('plugins/theme').change_theme(<args>)]])
