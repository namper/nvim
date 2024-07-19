-- Neo-Dev
require("neodev").setup({
  -- add any options here, or leave empty to use the default settings
})
-- capabilities
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  -- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities=capabilities,
}
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities=capabilities,
}
require('lspconfig')['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities=capabilities,
    -- Server-specific settings...
    settings = {
      ["rust-analyzer"] = {}
    }
}

require("lspconfig")["eslint"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities=capabilities,
	root_dir = function(filename, bufnr)
		if string.find(filename, "node_modules/") then
			return nil
		end
		return require("lspconfig.server_configurations.eslint").default_config.root_dir(filename, bufnr)
	end
}

require("lspconfig")["lua_ls"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities=capabilities,
    settings = {
        Lua = {
          completion = {
            callSnippet = "Replace"
          }
        }
      }
}

-- code completion
vim.opt.completeopt = {"menu", "menuone", "noselect"}

-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
    snippet = {
    expand = function(args)
     require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-s>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), 
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'nvim_lsp_signature_help'}
    },
    {{ name = 'buffer' }})
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
sources = cmp.config.sources({
  { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
}, {
  { name = 'buffer' },
})
})


cmp.setup.filetype({ "sql" }, {
    sources = {
        { name = 'vim-dadbod-completion' },
        { name = 'buffer' },
    }
})


require("lsp_lines").setup()
vim.diagnostic.config({
  virtual_text = true,
  virtual_lines = false,
})

require('lean').setup{
  -- Enable the Lean language server(s)?
  --
  -- false to disable, otherwise should be a table of options to pass to `leanls`
  -- See https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#leanls for details.
  lsp = {
    on_attach = on_attach,
    init_options = {
      -- See Lean.Lsp.InitializationOptions for details and further options.

      -- Time (in milliseconds) which must pass since latest edit until elaboration begins.
      -- Lower values may make editing feel faster at the cost of higher CPU usage.
      editDelay = 200,

      -- Whether to signal that widgets are supported.
      -- Enabled by default, as support for most widgets is implemented in lean.nvim.
      hasWidgets = true,
    }
  },

  ft = {
    -- A list of patterns which will be used to protect any matching
    -- Lean file paths from being accidentally modified (by marking the
    -- buffer as `nomodifiable`).
    nomodifiable = {
        -- by default, this list includes the Lean standard libraries,
        -- as well as files within dependency directories (e.g. `_target`)
        -- Set this to an empty table to disable.
    }
  },

  -- Abbreviation support
  abbreviations = {
    -- Enable expanding of unicode abbreviations?
    enable = true,
    -- additional abbreviations:
    extra = {
      -- Add a \wknight abbreviation to insert ♘
      --
      -- Note that the backslash is implied, and that you of
      -- course may also use a snippet engine directly to do
      -- this if so desired.
      wknight = '♘',
    },
    -- Change if you don't like the backslash
    -- (comma is a popular choice on French keyboards)
    leader = '\\',
  },

  -- Enable suggested mappings?
  --
  -- false by default, true to enable
  mappings = false,

  -- Infoview support
  infoview = {
    -- Automatically open an infoview on entering a Lean buffer?
    -- Should be a function that will be called anytime a new Lean file
    -- is opened. Return true to open an infoview, otherwise false.
    -- Setting this to `true` is the same as `function() return true end`,
    -- i.e. autoopen for any Lean file, or setting it to `false` is the
    -- same as `function() return false end`, i.e. never autoopen.
    autoopen = true,

    -- Set infoview windows' starting dimensions.
    -- Windows are opened horizontally or vertically depending on spacing.
    width = 50,
    height = 20,

    -- Put the infoview on the top or bottom when horizontal?
    -- top | bottom
    horizontal_position = "bottom",

    -- Always open the infoview window in a separate tabpage.
    -- Might be useful if you are using a screen reader and don't want too
    -- many dynamic updates in the terminal at the same time.
    -- Note that `height` and `width` will be ignored in this case.
    separate_tab = false,

    -- Show indicators for pin locations when entering an infoview window?
    -- always | never | auto (= only when there are multiple pins)
    indicators = "auto",
  },

  -- Progress bar support
  progress_bars = {
    -- Enable the progress bars?
    enable = true,
    -- Use a different priority for the signs
    priority = 10,
  },

  -- Redirect Lean's stderr messages somehwere (to a buffer by default)
  stderr = {
    enable = true,
    -- height of the window
    height = 5,
    -- a callback which will be called with (multi-line) stderr output
    -- e.g., use:
    --   on_lines = function(lines) vim.notify(lines) end
    -- if you want to redirect stderr to `vim.notify`.
    -- The default implementation will redirect to a dedicated stderr
    -- window.
    on_lines = nil,
  },

  -- Legacy Lean 3 support (on_attach is as above, your LSP handler)
  lsp3 = { on_attach = on_attach },

  -- mouse_events = true will simulate mouse events in the Lean 3 infoview, this is buggy at the moment
  -- so you can use the I/i keybindings to manually trigger these
 lean3 = { mouse_events = false },
}
