return {
    'RRethy/vim-illuminate',
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        delay = 200,
        large_file_cutoff = 2000,
        large_file_overrides = {
            providers = { "lsp" },
        },
    },
    config = function(_, opts)
        require("illuminate").configure(opts)

        local function map(key, dir, buffer)
            vim.keymap.set("n", key, function()
                require("illuminate")["goto_" .. dir .. "_reference"](false)
            end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })
        end

        -- Navegação entre referências
        map("]]", "next")
        map("[[", "prev")

        -- Também ativa ao entrar em um buffer
        vim.api.nvim_create_autocmd("FileType", {
            callback = function()
                local buffer = vim.api.nvim_get_current_buf()
                map("]]", "next", buffer)
                map("[[", "prev", buffer)
            end,
        })
    end,
    keys = {
        { "]]", desc = "Next Reference" },
        { "[[", desc = "Prev Reference" },
    },
}
