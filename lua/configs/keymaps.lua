-- ~/.config/nvim/lua/config/keymaps.lua
--

------------------------------
-- Configuração dos keymaps --
------------------------------

-- Keymaps simples
vim.keymap.set('n', '<leader>Q', '<cmd>q!<CR>')
vim.keymap.set('n', '<leader>W', '<cmd>wq<CR>')


-- Keymap para o LazyGit
vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<CR>')

-- Keymaps para o Move NVIM
-- Comandos no modo normal
vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', { noremap = true, silent = true})
vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', { noremap = true, silent = true})
vim.keymap.set('n', '<A-l>', ':MoveWord(1)<CR>', { noremap = true, silent = true})
vim.keymap.set('n', '<A-h>', ':MoveWord(-1)<CR>', { noremap = true, silent = true})

-- Comandos no modo visual
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', { noremap = true, silent = true})
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', { noremap = true, silent = true})
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', { noremap = true, silent = true})
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', { noremap = true, silent = true})


-- Toggle do Neo Tree
vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle ~<CR>', { noremap = true, silent = true, desc = "Toggle do NeoTree" })
vim.keymap.set('n', '<leader>v', '<cmd>Neotree focus<CR>', { noremap = true, silent = true, desc = "Mudar o foco para o buffer do NeoTree" })


-- Toggle do floaterm
vim.keymap.set('n', '<leader>tn', '<cmd>FloatermNew<CR>', { noremap = true, silent = true, desc = "Cria uma nova sessão do terminal flutuante" })
vim.keymap.set('n', '<leader>t', '<cmd>FloatermToggle<CR>', { noremap = true, silent = true, desc = "Abre/Fecha o terminal(a sessão ainda continua executando)"})
vim.keymap.set('n', '<leader>h', '<cmd>FloatermPrev<CR>', { noremap = true, silent = true, desc = "Vai para sessão anterior do terminal flutunte(não recupera sessão)" })
vim.keymap.set('n', '<leader>l', '<cmd>FloatermNext<CR>', { noremap = true, silent = true, desc = "Vai para a próxima sessão do terminal flutuante" })


-- Keymap para voltar pro Dahsboard
vim.keymap.set('n', '<leader>d', '<cmd>Dashboard<CR>', { noremap = true, silent = true, desc = "Volta pro Dashboard" })


-- Keymap para live-server
vim.keymap.set('n', '<leader>s', '<cmd>LiveServerToggle<CR>', { noremap = true, silent = true, desc = "Executa/para o live server" })


-- Navegação entre buffers
vim.keymap.set('n', '<C-d>', '<cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<C-a>', '<cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })

-- Fechar buffers
vim.keymap.set('n', '<leader>bd', '<cmd>bd<CR>', { desc = 'Delete buffer' })
--vim.keymap.set('n', '<leader>bD', '<cmd>BufferLineCloseRight<CR><cmd>BufferLineCloseLeft<CR>', { desc = 'Delete all buffers' })


-- Keymap para o scrollview(o scroll do lado =>>)
vim.keymap.set('n', '<leader>q', '<cmd>ScrollViewToggle<CR>')


-- No arquivo de configuração do LSP possuí mais keymaps
