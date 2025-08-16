return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        position = "bottom",
        height = 10,
        icons = true,
        mode = "workspace_diagnostics",
        severity = nil,
        fold_open = "",
        fold_closed = "",
        group = true,
        padding = true,
        cycle_results = true,
        action_keys = { close = "q", cancel = "<esc>", refresh = "r", jump = {"<cr>", "<tab>"} },
        multiline = true,
        indent_lines = true,
        auto_open = false,
        auto_close = false,
        auto_preview = true,
        auto_fold = false,
        signs = { error = "", warning = "", hint = "", information = "", other = "" },
        use_diagnostic_signs = false
    }
}