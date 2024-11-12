return {
    'windwp/nvim-autopairs',
    config = function()
        require('nvim-autopairs').setup({
            check_ts = true, -- Habilita suporte ao treesitter
        })
    end,
}

