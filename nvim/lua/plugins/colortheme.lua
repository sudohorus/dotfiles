return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            background = { 
                light = "latte",
                dark = "mocha",
            },
            transparent_background = false,
            term_colors = true,
            dim_inactive = {
                enabled = false,
                shade = "dark",
                percentage = 0.15,
            },
            styles = {
                comments = { "italic" },
                conditionals = { "italic" },
                loops = {},
                functions = {},
                keywords = { "italic" },
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
            },
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                telescope = true,
                notify = true,
                mini = false,
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                    },
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                    },
                },
                treesitter = true,
                illuminate = true,
                which_key = true,
                indent_blankline = {
                    enabled = true,
                    colored_indent_levels = true,
                },
                bufferline = true,
                markdown = true,
                mason = true,
                neotree = true,
                noice = true,
            },
            color_overrides = {},
            custom_highlights = {},
        })

        vim.cmd.colorscheme "catppuccin"
    end,
}