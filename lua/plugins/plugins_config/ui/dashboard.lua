-- ~/.config/nvim/lua/plugins/plugins/config/ui/dashboard.lua

-- Dashboard NVim

return {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        vim.cmd([[
            " Cores personalizadas para o dashboard
            highlight DashboardShortCut guifg=#8be9fd
            highlight DashboardDesc guifg=#50fa7b
            highlight DashboardIcon guifg=#bd93f9
            highlight DashboardFooter guifg=#bdbdbd gui=italic
        ]])

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

                    'Version Beta 0.1',
                },
                shortcut = {
                    { desc = '⥺ Exit', group = 'Label', action = 'q', key = 'q' },
                    { desc = ' Files', group = 'Label', action = 'Neotree toggle', key = 't' },
                    { desc = ' Config', group = 'Label', action = 'Neotree ' .. vim.fn.expand('~') .. '/.config/nvim/', key = 'c' }
                },
                mru = { limit = 8 },
                footer = {
                    '',
                    'THE VOID HAS AN END(?)',
                    '',
                    'Meu GitHub : https://github.com/Cubo3D'
                },
            }
        })
   -- Aplicar cores aos elementos específicos após o setup
        vim.cmd([[
            " Aplicar cores aos elementos do dashboard
            autocmd FileType dashboard highlight DashboardShortCut guifg=#8be9fd
            autocmd FileType dashboard highlight DashboardDesc guifg=#50fa7b
            autocmd FileType dashboard highlight DashboardIcon guifg=#bd93f9
            autocmd FileType dashboard highlight DashboardFooter guifg=#bdbdbd gui=italic
            "autocmd FileType dashboard highlight DashboardFooter guifg=#ff0000 gui=italic
        ]])
    end
}
