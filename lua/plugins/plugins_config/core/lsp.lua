return {
	-- Mason (Gerenciador de LSPs)
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	-- Ponte entre Mason e LSPconfig - ainda estou mantendo por questões de compatibilidade
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "html", "cssls", "emmet_ls", "pyright" }, -- LSPs automáticos
			})
		end,
	},

	-- Ferramenta para instalar os formatadores automáticamente
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"prettier",
					"stylua",
					"black",
				},
			})
		end,
	},

	-- LSPconfig - ainda estou mantendo por questões de compatibilidade
	{
		"neovim/nvim-lspconfig",
		event = "BufReadPre",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			-- Configurações LSP para várias linguagens
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- LSP para Lua
			vim.lsp.start({
				name = "lua_ls",
				cmd = { "lua-language-server" },
				capabilities = capabilities,
				settings = {
					Lua = {
						runtime = { version = "LuaJIT" },
						diagnostics = { globals = { "vim" } },
						workspace = { library = vim.api.nvim_get_runtime_file("", true) },
						telemetry = { enable = false },
					},
				},
			})

			-- LSP para HTML
			vim.lsp.start({
				name = "html",
				cmd = { "vscode-html-language-server", "--stdio" },
				capabilities = capabilities,
				filetypes = { "html", "htm" },
			})

			-- LSP para CSS
			vim.lsp.start({
				name = "cssls",
				cmd = { "vscode-css-language-server", "--stdio" },
				capabilities = capabilities,
				filetypes = { "css", "scss", "sass", "less" },
			})

			-- LSP para Emmet
			vim.lsp.start({
				name = "emmet_ls",
				cmd = { "emmet-ls", "--stdio" },
				capabilities = capabilities,
				filetypes = {
					"htm",
					"css",
					"scss",
					"sass",
					"less",
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
				},
			})

			-- LSP para Python
			vim.lsp.start({
				name = "pyright",
				cmd = { "pyright-langserver", "--stdio" },
				capabilities = capabilities,
			})

			-- Atalhos LSP globais
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					local opts = { buffer = ev.buf }
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
					vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
					vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
					vim.keymap.set("n", "<leader>g", function()
						vim.lsp.buf.format({ async = true })
					end, opts)
				end,
			})
		end,
	},

	-- Cmp core
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-vsnip",
			"hrsh7th/vim-vsnip",
			"hrsh7th/cmp-nvim-lsp", -- Certifique-se que esta dependência está aqui
		},
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				snippet = {
					expand = function(args)
						vim.fn["vsnip#anonymous"](args.body)
					end,
				},
				window = {
					-- completion = cmp.config.window.bordered(),
					-- documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "vsnip" },
				}, {
					{ name = "buffer" },
					{ name = "path" }, -- Adicionado path source
				}),
			})

			-- Use buffer source for `/` and `?`
			cmp.setup.cmdline({ "/", "?" }, {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = "buffer" },
				},
			})

			-- Use cmdline & path source for ':'
			cmp.setup.cmdline(":", {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					{ name = "path" },
				}, {
					{ name = "cmdline" },
				}),
				matching = { disallow_symbol_nonprefix_matching = false },
			})
		end,
	},

	-- Cmp sources
	{ "hrsh7th/cmp-buffer", lazy = true },
	{ "hrsh7th/cmp-path", lazy = true },
	{ "hrsh7th/cmp-cmdline", lazy = true },
	{ "hrsh7th/cmp-vsnip", lazy = true },
	{ "hrsh7th/vim-vsnip", lazy = true },
}
