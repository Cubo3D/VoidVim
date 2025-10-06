-- ~/.config/nvim/lua/plugins/init.lua

-------------------------------------------
-- Configuração e Instalação dos plugins --
-------------------------------------------

-- Somente deixo a configuração separada de alguns plugins quando ela passa mais de 40 linhas, ou quando fica mais bonito em um arquivo separado(um exemplo seria a configuração do Dashboard NVim e do Conform)

require("lazy").setup({

	-- Bloqueio de modificações no arquivo lockfile (lazy-lock.json)
	lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json",

	-- Dashboard NVim
	require("plugins.plugins_config.ui.dashboard"),

	-- NeoTree
	require("plugins.plugins_config.core.neotree"),

	-- LSP
	require("plugins.plugins_config.core.lsp"),

	-- Nvim Illuminate
	require("plugins.plugins_config.ui.nvim_illuminate"),

	-- BufferLine NVim
	require("plugins.plugins_config.ui.bufferline"),

	-- Conform NVim
	require("plugins.plugins_config.core.conform"),

	-- LazyGit
	{
		"kdheepak/lazygit.nvim",
	},

	-- Terminal flutuante
	{
		"voldikss/vim-floaterm",
	},

	-- Live Preview
	{
		"brianhuster/live-preview.nvim",
	},

	-- Git Signs
	{
		"lewis6991/gitsigns.nvim",
	},

	-- Nvim ScrollView
	{
		"dstein64/nvim-scrollview",
	},

	-- Pear Tree
	{
		"tmsvg/pear-tree",
	},

	-- Which Key NVim
	{
		"folke/which-key.nvim",
	},

	-- Undotree
	{
		"mbbill/undotree",
	},

	-- Vim Fugitive
	{
		"tpope/vim-fugitive",
	},

	-- LuaLine
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup()
		end,
	},

	-- Tema
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("oxocarbon")
		end,
	},

	-- Render MarkDown
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" }, -- if you use the mini.nvim suite
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},

	-- Gerenciaodr de sessões
	{
		"Shatur/neovim-session-manager",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("session_manager").setup({
				autoload_mode = require("session_manager.config").AutoloadMode.Disabled,
			})
		end,
	},

	-- Move NVim
	{
		"fedepujol/move.nvim",
		config = function()
			require("move").setup({
				line = {
					enable = true, -- Enables line movement
					indent = true, -- Toggles indentation
				},
				block = {
					enable = true, -- Enables block movement
					indent = true, -- Toggles indentation
				},
				word = {
					enable = true, -- Enables word movement
				},
				char = {
					enable = false, -- Enables char movement
				},
			})
		end,
	},

	-- Telescope e a UI
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						-- Na próxima atualização vou colocar temas e cores personalizadas no telescope-ui-select
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			"nvim-telescope/telescope-ui-select.nvim",
		},
	},

	-- Nvim-Notify
	{
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup({
				timeout = 3000,
				max_height = function()
					return math.floor(vim.o.lines * 0.75)
				end,
				max_width = function()
					return math.floor(vim.o.columns * 0.75)
				end,
			})
			vim.notify = require("notify")

			vim.api.nvim_set_hl(0, "NotifyERRORBorder", { fg = "#ff0000" })
			vim.api.nvim_set_hl(0, "NotifyERRORIcon", { fg = "#ff0000" })
			vim.api.nvim_set_hl(0, "NotifyERRORTitle", { fg = "#ff0000" })
			vim.api.nvim_set_hl(0, "NotifyWARNBorder", { fg = "#ffb700" })
			vim.api.nvim_set_hl(0, "NotifyWARNIcon", { fg = "#ffb700" })
			vim.api.nvim_set_hl(0, "NotifyWARNTitle", { fg = "#ffb700" })
			vim.api.nvim_set_hl(0, "NotifyINFOBorder", { fg = "#ffffff" })
			vim.api.nvim_set_hl(0, "NotifyINFOIcon", { fg = "#ffffff" })
			vim.api.nvim_set_hl(0, "NotifyINFOTitle", { fg = "#ffffff" })
		end,
	},

	-- Nvim Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
			if not status_ok then
				vim.notify("nvim-treesitter não pôde ser carregado", vim.log.levels.WARN)
				return
			end

			treesitter.setup({
				ensure_installed = {
					"lua",
					"python",
					"javascript",
					"typescript",
					"html",
					"css",
					"json",
					"bash",
					"markdown",
					"vim",
					"vimdoc",
				},
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = { enable = true },
			})
		end,
		init = function()
			vim.g.nvim_treesitter_install_dir = vim.fn.stdpath("data") .. "/nvim-treesitter"
		end,
	},

	-- Indentação
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPost", "BufNewFile" },
		main = "ibl",
		opts = {
			indent = {
				char = "│",
				-- Você também pode usar: "▏", "┊", "┆", "│", "⏐", "|"
			},
			scope = {
				enabled = true,
				show_start = true,
				show_end = true,
				char = "│",
			},
			exclude = {
				filetypes = {
					"help",
					"alpha",
					"dashboard",
					"neo-tree",
					"Trouble",
					"lazy",
					"mason",
					"notify",
					"toggleterm",
					"lazyterm",
					"markdown",
				},
			},
		},
	},
})
