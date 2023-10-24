return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    --Comments
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
    }

    --Autocomplete
    use {'ms-jpq/coq_nvim', branch = 'coq'}
    vim.cmd('let g:coq_settings = { "auto_start": "shut-up" }')

    --Snips
    use 'epilande/vim-es2015-snippets'
    use 'epilande/vim-react-snippets'
    vim.cmd('let g:UltiSnipsExpandTrigger="<C-l>"')

    --LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

    --Syntax
    use {
        'nvim-treesitter/nvim-treesitter',
        requires = {
            'nvim-treesitter/nvim-treesitter-refactor',
            'RRethy/nvim-treesitter-textsubjects',
        },
        run = ':TSUpdate',
    }

end)
