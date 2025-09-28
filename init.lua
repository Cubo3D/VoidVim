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


require("configs.config")
require("opt.init")
require("configs.keymaps")
require("plugins.init")

vim.api.nvim_create_user_command('VNUpdate', function()
    os.execute("cd ~/.config/nvim")

    local handle = io.popen("git fetch --dry-run 2>&1")
    local fetch_result = handle:read("*a")
    handle:close()

    if fetch_result == "" then
        print("O VoidVim já está atualizada.")
        os.execute("cd ~")
        return
    end

    os.execute("git pull origin")

    vim.cmd('Lazy sync')
    os.execute("rm -rf LICENCE README.md")
    print("O VoidVim foi atualizado com sucesso!")
    print("Reiniciando o VoidVim...")

    os.execute("cd ~")
end, {})

-- Obs: Os comentários só são uma "ajuda" pra quem quer analisar o código, ou os que querem fazer uma fork do projeto, caso queira que fazer suas próprias configurações dê uma olhada na pasta ~/.config/nvim/lua/opt
