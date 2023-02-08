vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Tokyooo
    use 'folke/tokyonight.nvim'
    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Language Server Protocol
    use 'neovim/nvim-lspconfig'
    use 'Maan2003/lsp_lines.nvim'
    -- Completion Protocol
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    -- Tree sitter
    use 'nvim-treesitter/nvim-treesitter'
    use 'lewis6991/spellsitter.nvim'
    -- Debug Protocol
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use 'mfussenegger/nvim-lint'
    use 'rcarriga/nvim-dap-ui'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'L3MON4D3/LuaSnip'
    -- Dev icons
    use 'ryanoasis/vim-devicons'
    -- Startify
    use 'mhinz/vim-startify'
    -- Git
    use 'tpope/Vim-fugitive'
    use 'lewis6991/gitsigns.nvim'
    -- Surround
    use 'machakann/vim-sandwich'
    -- flake8
    use 'nvie/vim-flake8'
    -- neoformat
    use 'sbdchd/neoformat'
    -- Context
    use 'nvim-treesitter/nvim-treesitter-context'
    -- LSP UI
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
    })
    -- Lua-todo
    use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim"
    }
    -- indent lines
    use {"lukas-reineke/indent-blankline.nvim"}
    -- lua line
    use 'nvim-lualine/lualine.nvim'
    -- Debugpy
    use 'HiPhish/debugpy.nvim'
    -- 'Neovim as LSP Server'
    use "jose-elias-alvarez/null-ls.nvim"
end
)
