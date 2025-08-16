return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
    opts = {
        notify = {
            enabled = true,
            view = "notify",
            opts = {
                replace = true,
                merge = true,
                level = 3,
                minimal = true,
                timeout = 2000,
                max_width = 40,
                max_height = 3,
            },
        },
        lsp = {
            progress = {
                enabled = false,
            },
            hover = {
                enabled = true,
                silent = true,
                view = nil,
                opts = {},
            },
            signature = {
                enabled = true,
                auto_open = {
                    enabled = true,
                    trigger = true,
                    luasnip = true,
                    throttle = 50,
                },
            },
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
        },
        routes = {
            {
                filter = {
                    event = "msg_show",
                    kind = "",
                    find = "written",
                },
                opts = { skip = true },
            },
            {
                filter = {
                    event = "msg_show",
                    kind = "search_count",
                },
                opts = { skip = true },
            },
        },
        views = {
            mini = {
                win_options = {
                    winblend = 0,
                },
            },
            notify = {
                merge = true,
                replace = true,
                render = "minimal",
                timeout = 3000,
            },
        },
        presets = {
            bottom_search = true,
            command_palette = true,
            long_message_to_split = true,
            inc_rename = false,
            lsp_doc_border = false,
        },
    },
}