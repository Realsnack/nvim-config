-- Mason and mason-lspconfig setup
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "clangd",
        "omnisharp",
        "rust_analyzer",
        "pyright",
        "gopls",
        "ts_ls", -- Assuming latest mason-lspconfig naming
        "html",
        "lua_ls",
        "sqls",
        "bashls",
    }
}

-- Optional: Enhance LSP capabilities for autocompletion (via nvim-cmp)
local capabilities = vim.lsp.protocol.make_client_capabilities()
local ok_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if ok_cmp then
    capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

-- Common `on_attach` function
local function on_attach(client, bufnr)
    local map = function(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
    end

    map("n", "gd", vim.lsp.buf.definition, "Go to definition")
    map("n", "K", vim.lsp.buf.hover, "Hover docs")
    map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
    map("n", "gr", vim.lsp.buf.references, "Show references")
    map("n", "<leader>ca", vim.lsp.buf.code_action, "Code actions")

    map("n", "<leader>g", vim.diagnostic.open_float, "Show diagnostic under cursor")
end

-- Load LSP config
local lspconfig = require("lspconfig")

local servers = {
    clangd = {},
    omnisharp = {},
    rust_analyzer = {},
    pyright = {},
    gopls = {},
    ts_ls = {},
    html = {},
    lua_ls = {
        settings = {
            Lua = {
                runtime = { version = "LuaJIT" },
                diagnostics = { globals = { "vim" } },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                    checkThirdParty = false,
                },
                telemetry = { enable = false },
            }
        }
    },
    sqls = {},
    bashls = {},
}

for name, config in pairs(servers) do
    config.capabilities = capabilities
    config.on_attach = on_attach
    lspconfig[name].setup(config)
end

