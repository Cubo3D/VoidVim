-- ~/.config/nvim/lua/config/keymaps.lua

------------------------------
-- Configuração dos keymaps --
------------------------------

-- Keymap para o LazyGit
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>")

-- Keymaps para o Move NVIM
-- Comandos no modo normal
vim.keymap.set("n", "<A-j>", ":MoveLine(1)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":MoveLine(-1)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-l>", ":MoveWord(1)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-h>", ":MoveWord(-1)<CR>", { noremap = true, silent = true })

-- Comandos no modo visual
vim.keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<A-h>", ":MoveHBlock(-1)<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<A-l>", ":MoveHBlock(1)<CR>", { noremap = true, silent = true })

-- Toggle do Neo Tree
vim.keymap.set("n", "<leader>n", function()
	vim.cmd("Neotree toggle source=filesystem dir=" .. vim.fn.expand("~"))
end, { noremap = true, silent = true, desc = "Mostra o NeoTree" })
vim.keymap.set(
	"n",
	"<leader>nf",
	"<cmd>Neotree focus<CR>",
	{ noremap = true, silent = true, desc = "Mudar o foco para o buffer do NeoTree" }
)

-- Toggle do floaterm
vim.keymap.set(
	"n",
	"<leader>tn",
	"<cmd>FloatermNew<CR>",
	{ noremap = true, silent = true, desc = "Cria uma nova sessão do terminal flutuante" }
)
vim.keymap.set(
	"n",
	"<leader>t",
	"<cmd>FloatermToggle<CR>",
	{ noremap = true, silent = true, desc = "Abre/Fecha o terminal(a sessão ainda continua executando)" }
)
vim.keymap.set(
	"n",
	"<leader>th",
	"<cmd>FloatermPrev<CR>",
	{ noremap = true, silent = true, desc = "Vai para sessão anterior do terminal flutunte(não recupera sessão)" }
)
vim.keymap.set(
	"n",
	"<leader>tl",
	"<cmd>FloatermNext<CR>",
	{ noremap = true, silent = true, desc = "Vai para a próxima sessão do terminal flutuante" }
)

-- Keymap para voltar pro Dahsboard
vim.keymap.set("n", "<leader>d", "<cmd>Dashboard<CR>", { noremap = true, silent = true, desc = "Volta pro Dashboard" })

-- Keymap para livepreview
vim.keymap.set(
	"n",
	"<leader>ls",
	"<cmd>LivePreview start<CR>",
	{ noremap = true, silent = true, desc = "Executa o live preview" }
)
vim.keymap.set(
	"n",
	"<leader>lS",
	"<cmd>LivePreview close<CR>",
	{ noremap = true, silent = true, desc = "Para o live preview" }
)

-- BufferLine
vim.keymap.set({ "n", "i" }, "<C-d>", "<cmd>BufferLineCycleNext<CR>", { silent = true, desc = "Next buffer" })
vim.keymap.set({ "n", "i" }, "<C-a>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Deleta o buffer atual" })
--vim.keymap.set('n', '<leader>bD', '<cmd>BufferLineCloseRight<CR><cmd>BufferLineCloseLeft<CR>', { desc = 'Delete all buffers' })

-- Keymap para o scrollview(o scroll do lado =>>)
vim.keymap.set("n", "<leader>q", "<cmd>ScrollViewToggle<CR>", { desc = "Desativa/Ativa o scroll do lado =>>" })

-- Keymap pro NeoVim Session manager
vim.keymap.set("n", "<leader>m", "<cmd>SessionManager<CR>", { desc = "Abre o gerenciador de sessões" })

-- Keymaps do o undotree
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>", { desc = "Abre o gerenciador de modificações" })
vim.keymap.set(
	"n",
	"<leader>uf",
	"<cmd>UndotreeFocus<CR>",
	{ desc = "Foca no buffer do undotree(gerenciador de modificações)" }
)

-- No arquivo de configuração do LSP possuí mais keymaps, não movi eles aqui por que é melhor ficar lá mesmo
