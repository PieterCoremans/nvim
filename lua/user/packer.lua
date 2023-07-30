-- This file can be loaded by calling `lua require('plugins')` from your init.vim

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

    use { 'ThePrimeagen/vim-be-good' }

    use { 'christoomey/vim-tmux-navigator' }

    use ({ 'lukas-reineke/indent-blankline.nvim' ,
        config = function()
            require('indent_blankline').setup({
                char = '▏',
                show_trailing_blankline_indent = false,
                show_first_indent_level = false,
                use_treesitter = true,
                show_current_context = false
            })
        end
    })

    use ({ 'lewis6991/gitsigns.nvim' ,
        -- config = function()
        --     require('gitsigns').setup({
        --         signs = {
                    -- add = {text = '▎'},
                    -- change = {text = '▎'},
                    -- delete = {text = '➤'},
                    -- topdelete = {text = '➤'},
                    -- changedelete = {text = '▎'},
                -- }
            -- })
        -- end
    })


    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end

end)
