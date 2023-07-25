-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  -- use('nvim-treesitter/playground')
  
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  use { 'vim-airline/vim-airline' }
  use { 'vim-airline/vim-airline-themes' }

  use { 'tpope/vim-vinegar' }

  -- use({
	  -- 'github/github',
	  -- as = 'givenname'
	  -- config = function()
		  -- vim.cmd('colorscheme givenname')
	  -- end
  -- })

end)

