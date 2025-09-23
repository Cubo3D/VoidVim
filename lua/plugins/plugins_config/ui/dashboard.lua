-- ~/.config/nvim/lua/plugins/plugins/config/ui/dashboard.lua

-- Dashboard NVim
return {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('dashboard').setup({
            theme = 'hyper',
            config = {
                week_header = {
                    enable = false, -- Se quiser colocar os dias é só colocar true, mas não é necessário apagar o header
                },
                header = {
                    "██╗   ██╗ ██████╗ ██╗██████╗ ██╗   ██╗██╗███╗   ███╗",
                    "██║   ██║██╔═══██╗██║██╔══██╗██║   ██║██║████╗ ████║",
                    "██║   ██║██║   ██║██║██║  ██║██║   ██║██║██╔████╔██║",
                    "╚██╗ ██╔╝██║   ██║██║██║  ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
                    " ╚████╔╝ ╚██████╔╝██║██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
                    "  ╚═══╝   ╚═════╝ ╚═╝╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",

                    'Version Alpha 0.1',
                },
                shortcut = {
                    { desc = '⏎ Exit', group = 'Label', action = 'q', key = 'q' },
                    { desc = ' Files', group = 'Label', action = 'Neotree toggle ~', key = 't' },
                    { desc = ' Config', group = 'Label', action = 'Neotree  ~/.config/nvim/', key = 'c' },
                },
                mru = { limit = 9 },
                footer = {
                    '',
                    'THE VOID IS INFINITE' -- Coloquei porque estou no tema de terror
                },
            }
        })
    end
}
