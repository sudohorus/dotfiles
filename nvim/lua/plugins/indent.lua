return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        indent = {
            char = "│",
            tab_char = "│",
        },
        scope = { 
            enabled = true,
            show_start = true,
            show_end = true,
            injected_languages = true,
            highlight = { "Function", "Label" },
            priority = 500,
        },
        exclude = {
            filetypes = {
                "help",
                "alpha",
                "dashboard",
                "neo-tree",
                "Trouble",
                "trouble",
                "lazy",
                "mason",
                "notify",
            },
        },
    },
}
