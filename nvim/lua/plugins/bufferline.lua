return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                style_preset = require("bufferline").style_preset.minimal,
                themable = true,
                separator_style = "slant",
                show_buffer_close_icons = true,
                show_close_icon = false,
                color_icons = true,
                diagnostics = "nvim_lsp",
                diagnostics_update_in_insert = false,
                diagnostics_indicator = function(count, level)
                    local icon = level:match("error") and " " or level:match("warning") and " " or ""
                    return " " .. icon .. count
                end,
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Explorador de Arquivos",
                        highlight = "Directory",
                        separator = true,
                    }
                },
                hover = {
                    enabled = true,
                    delay = 200,
                    reveal = {'close'}
                },
            },
            highlights = require("catppuccin.groups.integrations.bufferline").get()
        })
    end,
}