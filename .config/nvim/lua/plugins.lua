local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- use {'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }
  use { "catppuccin/nvim", as = "catppuccin" }
  use "nvim-tree/nvim-tree.lua"
  use 'nvim-tree/nvim-web-devicons'
  use 'lewis6991/gitsigns.nvim'
  use {
  'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use "nvim-treesitter/nvim-treesitter"
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp"
  }
  use 'norcalli/nvim-colorizer.lua'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'lervag/vimtex'
-- install without yarn or npm
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })
  --use {
    --"windwp/nvim-autopairs",
      --config = function() require("nvim-autopairs").setup {} end
  --}
  use 'echasnovski/mini.nvim'
  use({
    "L3MON4D3/LuaSnip",
  })
  use({ 'vladdoster/remember.nvim', config = [[ require('remember') ]] })
    -- vs-code like icons
  -- use "nvim-tree/nvim-web-devicons"

  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
