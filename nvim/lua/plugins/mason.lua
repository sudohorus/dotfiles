return {
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
        build = ":MasonUpdate",
        opts = {
            ensure_installed = {
                "pyright",           -- Python LSP
                "ruff-lsp",         -- Python linter
                "black",            -- Python formatter
                "lua-language-server", -- Lua LSP
                "stylua",           -- Lua formatter
                "typescript-language-server", -- TypeScript/JavaScript LSP
                "prettier",         -- Formatter para vários tipos de arquivo
            },
            ui = {
                border = "rounded",
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            },
        },
        config = function(_, opts)
            require("mason").setup(opts)
            local mr = require("mason-registry")
            local function ensure_installed()
                for _, tool in ipairs(opts.ensure_installed) do
                    local p = mr.get_package(tool)
                    if not p:is_installed() then
                        p:install()
                    end
                end
            end
            if mr.refresh then
                mr.refresh(ensure_installed)
            else
                ensure_installed()
            end
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "pyright",
                "lua_ls",
                "tsserver",
            },
            automatic_installation = true,
        },
    },
}
