vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = { {'nvim-lua/plenary.nvim'} } }
  use 'xiyaowong/transparent.nvim'
  -- use({ 'rose-pine/neovim', as = 'rose-pine' })
  -- use 'martinsione/darkplus.nvim'
  -- use 'navarasu/onedark.nvim'
  -- use { "catppuccin/nvim", as = "catppuccin" }
  -- use 'EdenEast/nightfox.nvim'
  -- use 'Shatur/neovim-ayu'
  use 'frenzyexists/aquarium-vim'
  use 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}
  use 'nvim-treesitter/playground'
  use 'mbbill/undotree'
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }
  use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
  use 'simrat39/rust-tools.nvim'
  use 'knubie/vim-kitty-navigator'
  use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
  use 'MunifTanjim/prettier.nvim'

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
      -- Configuration here, or leave empty to use defaults
      })
    end
  })

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.api.nvim_command, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }}

end)
