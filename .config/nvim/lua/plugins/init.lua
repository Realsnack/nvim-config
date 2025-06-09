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

    -- Lua-line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    -- Vim Airline
    -- { "vim-airline/vim-airline" },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },

    {
        {
            "hrsh7th/nvim-cmp",
            event = "InsertEnter",
            dependencies = {
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
            },
            config = function()
                local cmp = require("cmp")
                cmp.setup({
                    mapping = cmp.mapping.preset.insert({
                        ["<Tab>"] = cmp.mapping.select_next_item(),
                        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                        ["<C-Space>"] = cmp.mapping.complete(),
                        ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    }),
                    sources = cmp.config.sources({
                        { name = "nvim_lsp" },
                        { name = "buffer" },
                        { name = "path" },
                    }),
                })
            end
        }
    }
}
