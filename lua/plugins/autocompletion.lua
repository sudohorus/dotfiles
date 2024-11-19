return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'neovim/nvim-lspconfig',
    },
    config = function()
        local cmp = require 'cmp'
        local lspconfig = require 'lspconfig'

        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'buffer' },
                { name = 'path' },
            }),
        })

        lspconfig.clangd.setup{}    -- C, C++
        lspconfig.pyright.setup{}   -- Python
        lspconfig.cssls.setup{}     -- CSS
        lspconfig.tsserver.setup{}  -- TypeScript, JavaScript
        lspconfig.html.setup{}      -- HTML
        lspconfig.jsonls.setup{}    -- JSON 
        lspconfig.gopls.setup{}     -- Go
    end,
}

