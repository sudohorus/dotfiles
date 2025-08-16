return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup({
            -- Tamanho do terminal
            size = function(term)
                if term.direction == "horizontal" then
                    return 15  -- 15 linhas de altura para terminal horizontal
                elseif term.direction == "vertical" then
                    return vim.o.columns * 0.4  -- 40% da largura da tela para terminal vertical
                end
            end,
            
            -- Aparência
            shade_terminals = true,
            shading_factor = 2,
            start_in_insert = true,
            insert_mappings = true,
            terminal_mappings = true,
            persist_size = true,
            direction = 'horizontal',  -- 'vertical' | 'horizontal' | 'tab' | 'float'
            close_on_exit = true,
            shell = vim.o.shell,
            
            -- Integração com o tema Catppuccin
            highlights = {
                Normal = {
                    link = "Normal",
                },
                NormalFloat = {
                    link = "NormalFloat",
                },
                FloatBorder = {
                    link = "FloatBorder",
                },
            },
            
            -- Configuração do terminal flutuante
            float_opts = {
                border = 'curved',
                winblend = 0,
            },
        })

        -- Função para definir atalhos do terminal
        function _G.set_terminal_keymaps()
            local opts = {buffer = 0}
            -- Sair do modo terminal com Esc
            vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
            -- Navegação entre janelas no modo terminal
            vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
            vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
            vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
            vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
        end

        -- Aplica os atalhos quando entrar no terminal
        vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

        -- Atalho principal: Ctrl+j para abrir/fechar terminal
        vim.keymap.set({'n', 't'}, '<C-j>', '<Cmd>ToggleTerm<CR>', {
            desc = "Alternar terminal",
            noremap = true,
            silent = true
        })

        -- Atalhos adicionais para diferentes tipos de terminais
        vim.keymap.set('n', '<leader>tf', '<Cmd>ToggleTerm direction=float<CR>', {
            desc = "Terminal flutuante",
            noremap = true,
            silent = true
        })
        
        vim.keymap.set('n', '<leader>th', '<Cmd>ToggleTerm direction=horizontal<CR>', {
            desc = "Terminal horizontal",
            noremap = true,
            silent = true
        })
        
        vim.keymap.set('n', '<leader>tv', '<Cmd>ToggleTerm direction=vertical<CR>', {
            desc = "Terminal vertical",
            noremap = true,
            silent = true
        })
    end
}
