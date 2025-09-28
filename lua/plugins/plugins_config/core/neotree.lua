-- ~/.connfig/nvim/lua/plugins/plugins_config/core/neo_tree.lua

return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function ()
        require('neo-tree').setup({
            close_if_last_window = true, -- Fecha o Neo-tree se for a última janela aberta
            popup_border_style = "rounded", -- "single", "double", "solid", "rounded", "none"
            enable_git_status = true,
            enable_diagnostics = true,
            default_component_configs = {
                indent = {
                    indent_size = 2,
                    padding = 1, -- extra padding no lado esquerdo
                    with_markers = true,
                    indent_marker = "│",
                    last_indent_marker = "└",
                    highlight = "NeoTreeIndentMarker",
                },
            icon = {
                folder_closed = "",
                folder_open = "",
                folder_empty = "",
                default = "*",
            },
            name = {
                trailing_slash = false,
                use_git_status_colors = true,
            },
            },
            event_handlers = {
                {
                    event = "file_opened",
                    handler = function(file_path)
                        require("neo-tree.command").execute({ action = "close" })
                    end,
                },
            git_status = {
                symbols = {
                    added     = "✚", -- ou ""
                    deleted   = "✖", -- ou ""
                    modified  = "", -- ou ""
                    renamed   = "󰁕", -- ou "➜"
                    untracked = "",
                    ignored   = "",
                    unstaged  = "󰄱",
                    staged    = "",
                    conflict  = "",
                }
            },
            },
            window = {
            position = "left", -- "left", "right", "top", "bottom", "float"
            width = 40, -- só funciona para posição left/right
            mapping_options = {
                noremap = true,
                nowait = true,
            },
            },
            filesystem = {
                filtered_items = {
                    visible = false, -- quando true, mostra itens ocultos (dotfiles) por padrão
                    hide_dotfiles = true,
                    hide_gitignored = false,
                    hide_by_name = {
                        -- "node_modules"
                    },
                    never_show = { -- itens absolutos que nunca serão mostrados
                        ".DS_Store",
                        -- "thumbs.db"
                    },
                },
                follow_current_file = {
                    enabled = true, -- Isso faz com que a árvore navegue automaticamente para o arquivo do buffer atual
                },
                use_libuv_file_watcher = true, -- Usa o watcher do libuv (mais eficiente)
            },
        })

        vim.api.nvim_set_hl(0, 'NeoTreeDirectoryIcon', { link = '@function' })  -- Ícone com a cor de "String"
        vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { link = '@constructor' }) -- Nome com a cor de "Function"

    end,
}

