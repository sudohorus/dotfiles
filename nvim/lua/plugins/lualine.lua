return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = "catppuccin",
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
                disabled_filetypes = {
                    statusline = { "neo-tree", "help" },
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = true,
            },
            sections = {
                lualine_a = {
                    { 'mode', separator = { left = '' }, right_padding = 2 },
                },
                lualine_b = { 
                    { 'branch', icon = '' },
                    { 
                        'diff',
                        symbols = {
                            added = ' ',
                            modified = ' ',
                            removed = ' '
                        },
                    },
                },
                lualine_c = {
                    {
                        'filename',
                        file_status = true,
                        path = 1,
                        symbols = {
                            modified = '●',
                            readonly = '',
                            unnamed = '[Sem Nome]',
                        }
                    }
                },
                lualine_x = {
                    {
                        'diagnostics',
                        sources = { 'nvim_diagnostic' },
                        sections = { 'error', 'warn', 'info', 'hint' },
                        symbols = {
                            error = ' ',
                            warn = ' ',
                            info = ' ',
                            hint = ' '
                        },
                        colored = true,
                    },
                    { 'filetype', colored = true, icon_only = false },
                    { 'encoding' },
                },
                lualine_y = { 'progress' },
                lualine_z = {
                    { 'location', separator = { right = '' }, left_padding = 2 },
                },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},
            extensions = { 'neo-tree', 'lazy' },
        }
    end,
}