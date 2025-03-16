return {
    'glepnir/lspsaga.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lspsaga').setup({
            diagnostic = {
                show_code_action = true,
                show_diagnostic_quickfix = true,
            },
        })
    end,
}

