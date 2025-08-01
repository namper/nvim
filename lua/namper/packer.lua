vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Tokyooo
    use 'folke/tokyonight.nvim'
    -- Gruv
    use 'almo7aya/neogruvbox.nvim'
    use 'yorickpeterse/vim-paper'
    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
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
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    -- Tree sitter
    use 'nvim-treesitter/nvim-treesitter'
    -- Debug Protocol
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use 'mfussenegger/nvim-lint'
    use {
        "rcarriga/nvim-dap-ui",
        requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}
    }
    use 'theHamsta/nvim-dap-virtual-text'
    use 'L3MON4D3/LuaSnip'
    -- Dev icons
    use 'ryanoasis/vim-devicons'
    -- Startify
    use 'mhinz/vim-startify'
    -- Git
    use 'tpope/Vim-fugitive'
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-rhubarb'
    -- Surround
    use 'machakann/vim-sandwich'
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
    -- 'Neovim as LSP Server'
    use "davidmh/cspell.nvim"
    -- Db UI
    use {
      "tpope/vim-dadbod",
      requires = {
       "kristijanhusak/vim-dadbod-ui",
       "kristijanhusak/vim-dadbod-completion"
      },
    }
    use {
        "github/copilot.vim",
        branch = 'release'
    }
    use {
        "jesseleite/nvim-noirbuddy",
        requires = { "tjdevries/colorbuddy.nvim"}
    }
    use {
        "folke/neodev.nvim"
    }
    use {
        'Julian/lean.nvim',
        requires = {
            'neovim/nvim-lspconfig',
            'nvim-lua/plenary.nvim',
        }
    }
    use {
        'lervag/vimtex',
    }
    use {
      "jiaoshijie/undotree",
      requires = {
        "nvim-lua/plenary.nvim",
      },
    }
    use {"tpope/vim-dotenv"}
    use {
      "nvimtools/none-ls.nvim",
      requires = {
        "nvimtools/none-ls-extras.nvim",
      },
    }
    use {
      "CopilotC-Nvim/CopilotChat.nvim",
      requires = {
        { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
      },
      run = "make tiktoken"
    }
end
)
