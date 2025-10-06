-- ~/.config/nvim/lua/plugins/plugins/config/ui/dashboard.lua

-- Dashboard NVim

return {
	"glepnir/dashboard-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		vim.cmd([[
            " Cores personalizadas para o dashboard
            highlight DashboardShortCut guifg=#8be9fd
            highlight DashboardFooter guifg=#bdbdbd gui=italic
        ]])

		require("dashboard").setup({
			theme = "doom",
			config = {
				header = {
					"",
					"██╗   ██╗ ██████╗ ██╗██████╗ ██╗   ██╗██╗███╗   ███╗",
					"██║   ██║██╔═══██╗██║██╔══██╗██║   ██║██║████╗ ████║",
					"██║   ██║██║   ██║██║██║  ██║██║   ██║██║██╔████╔██║",
					"╚██╗ ██╔╝██║   ██║██║██║  ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
					" ╚████╔╝ ╚██████╔╝██║██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
					"  ╚═══╝   ╚═════╝ ╚═╝╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
					"",
					"Versão Beta 0.1.9",
					"",
					"",
					"",
					"",
				},
				center = {
					{
						icon = "+ ",
						icon_hl = "@function",
						desc = "Novo arquivo",
						desc_hl = "@constructor",
						key = "n",
						key_hl = "DashboardShortCut",
						action = "edit novo_arquivo",
					},
					{
						icon = " ",
						icon_hl = "@function",
						desc = "Arquivos",
						desc_hl = "@constructor",
						key = "t",
						key_hl = "DashboardShortCut",
						action = "Neotree " .. vim.fn.expand("~"),
					},
					{
						icon = " ",
						icon_hl = "@function",
						desc = "Config",
						desc_hl = "@constructor",
						key = "c",
						key_hl = "DashboardShortCut",
						action = "Neotree " .. vim.fn.expand("~") .. "/.config/nvim/",
					},
					{
						icon = " ",
						icon_hl = "@function",
						desc = "Procurar Arquivos...",
						desc_hl = "@constructor",
						key = "f",
						key_hl = "DashboardShortCut",
						action = "Telescope find_files",
					},
					{
						icon = " ",
						icon_hl = "@function",
						desc = "Arquivos Recentes",
						desc_hl = "@constructor",
						key = "r",
						key_hl = "DashboardShortCut",
						action = "Telescope oldfiles",
					},
					{
						icon = " ",
						icon_hl = "@function",
						desc = "Gerenciar Sessões",
						desc_hl = "@constructor",
						key = "m",
						key_hl = "DashboardShortCut",
						action = "SessionManager",
					},
					{
						icon = " ",
						icon_hl = "@function",
						desc = "Sair",
						desc_hl = "@constructor",
						key = "q",
						key_hl = "DashboardShortCut",
						action = "q",
					},
				},
				footer = {
					"",
					"",
					"",
					"",
					"",
					"O VOID TEM FIM(?)",
					"",
					"Meu GitHub : https://github.com/Cubo3D",
				},
			},
		})

		-- Aplicar cores aos elementos específicos após o setup
		vim.cmd([[
            " Aplicar cores aos elementos do dashboard
            autocmd FileType dashboard highlight DashboardShortCut guifg=#8be9fd
            autocmd FileType dashboard highlight DashboardFooter guifg=#bdbdbd gui=italic
        ]])
	end,
}
