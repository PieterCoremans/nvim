-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

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
    use { 'tpope/vim-fugitive' }
    use 'ThePrimeagen/vim-be-good'

    --   use({
        -- 	  'github/github',
        -- 	  as = 'givenname'
        -- 	  config = function()
            -- 		  vim.cmd('colorscheme givenname')
            -- 	  end
            --   })

            -- Automatically set up your configuration after cloning packer.nvim
            -- Put this at the end after all plugins
            if packer_bootstrap then
                require('packer').sync()
            end

        end)

