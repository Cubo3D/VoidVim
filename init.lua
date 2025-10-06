-- ~/.config/nvim/init.lua

----------------------------
-- Configuração principal --
----------------------------

-- Instalação automática do lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Bloqueio de modificações no arquivo lockfile (lazy-lock.json)
lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json", require("configs.config")
require("opt.init")
require("configs.keymaps")
require("plugins.init")

vim.api.nvim_create_user_command("VNUpdate", function()
	local config_dir = vim.fn.stdpath("config")

	vim.fn.chdir(config_dir)

	--    local handle = io.popen("git fetch --dry-run 2>&1")
	--    local fetch_result = handle:read("*a")
	--    handle:close()

	--    if fetch_result == "" then
	--        print("O VoidVim já está atualizado.")
	--        return
	--    end

	print("Atualizando VoidVim...")

	local pull_handle = io.popen("git pull --force 2>&1")
	local pull_result = pull_handle:read("*a")
	local success, _, exit_code = pull_handle:close()

	if not success or exit_code ~= 0 then
		print("Erro ao atualizar VoidVim: " .. pull_result)
		return
	end

	print(pull_result)

	vim.cmd("Lazy restore")

	--    os.execute("rm -f LICENCE README.md")

	print("O VoidVim foi atualizado com sucesso!")
	print("Reinicie o Neovim para que as alterações entrem em vigor.")
end, {})

-- Obs: Os comentários só são uma "ajuda" pra quem quer analisar o código, ou os que querem fazer uma fork do projeto, caso queira que fazer suas próprias configurações dê uma olhada na pasta ~/.config/nvim/lua/opt
