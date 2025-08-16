# Neovim Config

## Atalhos

### Básicos
- `Ctrl + s` - Salvar arquivo
- `Ctrl + q` - Fechar arquivo
- `Ctrl + j` - Abrir/fechar terminal
- `<leader>e` - Abrir gerenciador de arquivos

### Navegação
- `Ctrl + d/u` - Rolar meia página para baixo/cima
- `Ctrl + Tab` - Próximo buffer
- `Ctrl + Shift + Tab` - Buffer anterior

### Edição
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