return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {
        check_ts = true,
        ts_config = { java = false },
        fast_wrap = {},
        disable_filetype = { "TelescopePrompt", "vim" },
    },
}