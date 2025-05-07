--  This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'rstacruz/vim-closer'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- copilot
  use 'github/copilot.vim'

  -- colorscheme
  use 'scottmckendry/cyberdream.nvim'
  use { 'ellisonleao/gruvbox.nvim' }
  use { 'sainnhe/everforest' }
  use { 'savq/melange-nvim' }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'theprimeagen/harpoon'
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'

  -- buffer manager
  use 'nvim-lua/plenary.nvim' -- basic dependency
  use 'j-morano/buffer_manager.nvim'

  -- lsp
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use({'f-person/git-blame.nvim'})
end)
