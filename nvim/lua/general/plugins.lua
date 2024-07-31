if vim.g.vscode then
  -- VSCode extension
else
  -- ordinary Neovim
  local fn = vim.fn

  local lazypath = fn.stdpath("data") .."/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable",
      lazypath
    })
  end
  vim.opt.rtp:prepend(lazypath)
  require('lazy').setup({
    --GIT related plugsin
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',
    'christoomey/vim-tmux-navigator',
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
    -- LSP
    { 
      'neovim/nvim-lspconfig', dependencies = {
        -- Automatically install LSP to the Lazypath
        {'williamboman/mason.nvim', config=true},
        'williamboman/mason-lspconfig.nvim', lazy=false,
        {'j-hui/fidget.nvim', tag = 'legacy'},



        -- Additional lua coinfiguration

        {'folke/neodev.nvim',
          config = function() 
            require('neodev').setup()
          end
        },

        {'hrsh7th/nvim-cmp',
          dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',

            -- Adss LSP Completion capabilities
            'hrsh7th/cmp-nvim-lsp',

            -- Adds a number of snippets
            'rafamadriz/friendly-snippets'

          }
        },-- the completion plugin,
        'hrsh7th/cmp-buffer', -- buffer completion
        'hrsh7th/cmp-path', -- path completion
        'hrsh7th/cmp-cmdline', -- cmdline completion
      }
    },
    {
      'nvim-telescope/telescope.nvim',
      branch =  '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end
    },
    {
      -- Show pending keybinds
      'folke/which-key.nvim', opts= {}
    },
    {
      'nvim-tree/nvim-tree.lua',
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
      },
      config = function() 
        require('nvim-tree').setup()
      end
    },
    {
      'lewis6991/gitsigns.nvim',
    },
    {
      "Mofiqul/vscode.nvim",
      priority=1000,
    },
    {
      'wakatime/vim-wakatime'
    },
    {
      'nvim-treesitter/nvim-treesitter', 
      dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects'
      },
      build = ':TSUpdate'
    },
    {
      "udalov/javap-vim"
    },
    {
      'mfussenegger/nvim-jdtls',
    }, 
    {
      'windwp/nvim-ts-autotag',
    },
    {
      'xiyaowong/telescope-emoji',
    },
    {
      --  "fatih/vim-go"
    },  
    {
      "mattn/emmet-vim"
    },
    {
      "epwalsh/obsidian.nvim",
      version="*",
      lazy = true,
      ft = "markdown",
      dependencies = {
        "nvim-lua/plenary.nvim"
      }
    },
    {
      "itchyny/vim-haskell-indent"
    },
    {
      "jiriks74/presence.nvim",
      event = "UIEnter",
    },
    {
      'tpope/vim-commentary'
    },
    {
      'machakann/vim-highlightedyank'
    }, 
    {
      'mg979/vim-visual-multi'
    },
    {
      'nvim-tree/nvim-web-devicons'
    },
    { 
       'norcalli/nvim-colorizer.lua'
    },
    {
      "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} 
    },
    {
      "amitds1997/remote-nvim.nvim",
      version = "*", -- Pin to GitHub releases
      dependencies = {
        "nvim-lua/plenary.nvim", -- For standard functions
        "MunifTanjim/nui.nvim", -- To build the plugin UI
        "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
      },
      config = true,
    },
    {
      "Exafunction/codeium.vim", config = function ()
        -- Change '<C-g>' here to any keycode you like.
        vim.keymap.set('i', '<C-M-g>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
        vim.keymap.set('i', '<c-.>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
        vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
        vim.keymap.set('i', '<c-/>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
      end
    },
  })

end
