# sudohorus nvim .dotfiles 

## Atalhos Principais

### Navegação
- `<Space>` - Tecla líder
- `Ctrl + d/u` - Rolar meia página para baixo/cima
- `]]` / `[[` - Próxima/anterior referência da palavra
- `[d` / `]d` - Próximo/anterior diagnóstico

### Arquivos e Buffers
- `Ctrl + s` - Salvar arquivo
- `Ctrl + q` - Fechar arquivo
- `Ctrl + Tab` - Próximo buffer
- `Ctrl + Shift + Tab` - Buffer anterior
- `<leader>x` - Fechar buffer
- `<leader>b` - Novo buffer

### LSP e Código
- `gd` - Ir para definição
- `gr` - Mostrar referências
- `gD` - Ir para declaração
- `gi` - Ir para implementação
- `K` - Mostrar documentação
- `<leader>rn` - Renomear
- `<leader>ca` - Ações de código
- `<leader>f` - Formatar código

### Terminal Integrado
- `Ctrl + j` - Abrir/fechar terminal
- `<leader>tf` - Terminal flutuante
- `<leader>th` - Terminal horizontal
- `<leader>tv` - Terminal vertical

### Telescope (Busca)
- `<leader>ff` - Buscar arquivos
- `<leader>fg` - Buscar no conteúdo
- `<leader>fb` - Buscar buffers
- `<leader>fh` - Buscar ajuda

### Autocompletion
- `Ctrl + n/p` - Próxima/anterior sugestão
- `Ctrl + d/f` - Rolar documentação
- `Ctrl + Space` - Mostrar sugestões
- `Ctrl + e` - Cancelar sugestões
- `Enter` - Aceitar sugestão
- `Tab / Shift + Tab` - Navegar snippets

### Diagnósticos
- `<leader>e` - Mostrar erro flutuante
- `<leader>q` - Lista de diagnósticos

### Outros
- `<leader>lw` - Alternar quebra de linha
- `<` / `>` - Indentar (modo visual)
- `p` - Colar preservando registro


## Instalação

1. Clone o repositório:
```bash
git clone https://github.com/seu-usuario/nvim-config.git ~/.config/nvim
```

2. Execute o script de instalação:
```bash
cd ~/.config/nvim
./install.sh
```

3. Abra o Neovim e execute:
```
:Lazy sync
:Mason
```
