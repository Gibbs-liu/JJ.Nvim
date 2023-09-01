-- about ?

local plugins = {

  { "elkowar/yuck.vim" , lazy = false },  -- load a plugin at startup

  -- You can use any plugin specification from lazy.nvim
  {
    "Pocco81/TrueZen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist" },
    config = function()
      require "custom.configs.truezen" -- just an example path
    end,
  },

  -- this opts will extend the default opts 
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",
        
        -- web dev
        "html",
        "css",
        "bash",
        "javascript",
        "typescript",
        "tsx",
        "json",

        -- low level
        "c",
        "cmake",
        "python",
      },
    },
    dependencies={
      'p00f/nvim-ts-rainbow',
    }
  },

  -- if you load some function or module within your opt, wrap it with a function
  {
   "nvim-telescope/telescope.nvim",
    dependencies =  {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-symbols.nvim',
      'sharkdp/fd',
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
   opts = {

     defaults = {
       mappings = {
         i = {
           ["<esc>"] = function(...)
               require("telescope.actions").close(...)
            end,
          },
        },
      },
    },
   },

   {
     "folke/which-key.nvim",
     enabled = false,
   },
  
  {
    "terrortylor/nvim-comment",
    lazy = false,
    config = function()
      require('custom.plugin.nvim-comment')
    end,
  },


  {
    "nvim-telescope/telescope-dap.nvim",
    lazy = false,
    dependencies = {
    "theHamsta/nvim-dap-virtual-text",
    "ravenxrz/nvim-dap",
    "ravenxrz/DAPInstall.nvim",
    "rcarriga/nvim-dap-ui",
    "nvim-tree/nvim-tree.lua"
    },
    init = function()
      require("core.utils").load_mappings "nvimtree"
    end,
    opts = function()
      return require "plugins.configs.nvimtree"
    end,
    config = function(_, opts)
      -- require "nvim-tree".setup {}
      require('custom.dap')
      require("core.utils").load_mappings "nvimtree"
      dofile(vim.g.base46_cache .. 'nvimtree')
      require('nvim-tree').setup(opts)
    end,
  },

  -- bookmarks
  {
     'tomasky/bookmarks.nvim',
  after = "telescope.nvim",
  event = "VimEnter",
  config = function()
    require('bookmarks').setup{
        -- sign_priority = 8,  --set bookmark sign priority to cover other sign
  save_file = vim.fn.expand "$HOME/.bookmarks", -- bookmarks save file path
  keywords =  {
    ["@t"] = "☑️ ", -- mark annotation startswith @t ,signs this icon as `Todo`
    ["@w"] = "⚠️ ", -- mark annotation startswith @w ,signs this icon as `Warn`
    ["@f"] = "⛏ ", -- mark annotation startswith @f ,signs this icon as `Fix`
    ["@n"] = " ", -- mark annotation startswith @n ,signs this icon as `Note`
  },
    -- require('telescope').load_extension('bookmarks'),
  on_attach = function(bufnr)
    local bm = require "bookmarks"
    local map = vim.keymap.set
    map("n","mm",bm.bookmark_toggle) -- add or remove bookmark at current line
    map("n","mi",bm.bookmark_ann) -- add or edit mark annotation at current line
    map("n","mc",bm.bookmark_clean) -- clean all marks in local buffer
    map("n","mn",bm.bookmark_next) -- jump to next mark in local buffer
    map("n","mp",bm.bookmark_prev) -- jump to previous mark in local buffer
    map("n","ml",bm.bookmark_list) -- show marked file list in quickfix window
  end
      }
  end,
  },


  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "pyright",
      }
    }
  },

  {
  'stevearc/aerial.nvim',
    lazy=false,
  opts = {},
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  },
  config = function ()
    require "custom.plugin.aerial"
  end
  },
}

return plugins

