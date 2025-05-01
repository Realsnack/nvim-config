return {
  -- Colorscheme
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    config = function()
      vim.cmd("colorscheme tokyonight")
    end
  },

  -- Telescope + dependency
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  -- Harpoon
  { "theprimeagen/harpoon" },

  -- Undotree
  { "mbbill/undotree" },

  -- Fugitive
  { "tpope/vim-fugitive" },

  -- Vim Airline
  { "vim-airline/vim-airline" },

  -- Lspsaga (requires lspconfig to be loaded first)
  {
    "nvimdev/lspsaga.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("lspsaga").setup({})
    end,
  },

  -- LSP Zero
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    dependencies = {
      -- LSP Support
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",

      -- Autocompletion
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",

      -- Snippets
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
    },
  },
}

