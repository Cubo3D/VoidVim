-- ~/.config/nvim/lua/plugins/plugins_config/core/nvim_illuminate.lua

-- NVim Illuminate

return {
    "RRethy/vim-illuminate",
    event = "BufReadPost",
    config = function()
        require('illuminate').configure({
            -- providers: provedor usado para obter referências no buffer, ordenadas por prioridade
            providers = {
                'lsp',
                'treesitter',
                'regex',
            },
            -- delay: atraso em milessegundos
            delay = 100,
            -- filetype_overrides: substituições específicas do tipo de arquivo.
            -- As chaves são strings para representar o tipo de arquivo, enquanto os valores são tabelas que
            -- supports the same keys passed to .configure except for filetypes_denylist and filetypes_allowlist
            filetype_overrides = {},
            -- filetypes_denylist: tipos de arquivo a não serem iluminados, isso substitui filetypes_allowlist
            filetypes_denylist = {
                'dirbuf',
                'dirvish',
                'fugitive',
            },
            -- filetypes_allowlist: tipos de arquivo a serem iluminados, isso é substituído por filetypes_denylist
            -- Você deve definir filetypes_denylist = {} para substituir os padrões e permitir que filetypes_allowlist entre em vigor
            filetypes_allowlist = {},
            -- modes_denylist: modos para não iluminar, isso substitui modes_allowlist
            -- Veja `:help mode()` para valores possíveis
            modes_denylist = {},
            -- modes_allowlist: modos para iluminar, isso é substituído por modes_denylist
            -- Veja `:help mode()` para valores possíveis
            modes_allowlist = {},
            -- providers_regex_syntax_denylist: sintaxe para não iluminar, isso substitui providers_regex_syntax_allowlist
            -- Aplica-se somente ao provedor 'regex'
            -- Use :echom synIDattr(synIDtrans(synID(linha('.'), col('.'), 1)), 'nome')
            providers_regex_syntax_denylist = {},
            -- providers_regex_syntax_allowlist: sintaxe para iluminar, isso é substituído por providers_regex_syntax_denylist
            -- Aplica-se somente ao provedor 'regex'
            -- Use :echom synIDattr(synIDtrans(synID(linha('.'), col('.'), 1)), 'nome')
            providers_regex_syntax_allowlist = {},
            -- under_cursor: se deve ou não iluminar sob o cursor
            under_cursor = true,
            -- large_file_cutoff: número de linhas para usar large_file_config
            -- A opção `under_cursor` é desabilitada quando este limite é atingido
            large_file_cutoff = 10000,
            -- large_file_config: configuração a ser usada para arquivos grandes (com base em large_file_cutoff).
            -- Suporta as mesmas chaves passadas para .configure
            --Se nil, o vim-illuminate será desabilitado para arquivos grandes.
            large_file_overrides = nil,
            -- min_count_to_highlight: número mínimo de correspondências necessárias para realizar o destaque
            min_count_to_highlight = 1,
            -- should_enable: um retorno de chamada que substitui todas as outras configurações para
            -- ativar/desativar iluminação. Isso será chamado muitas vezes, então não faça
            -- nada caro nele.
            should_enable = function(bufnr) return true end,
            -- case_insensitive_regex: define a diferenciação entre maiúsculas e minúsculas em expressões regulares
            case_insensitive_regex = false,
            -- disable_keymaps: desabilitar mapas de teclas padrão
            disable_keymaps = false,
        })
    end
}
