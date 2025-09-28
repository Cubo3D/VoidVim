-- ~/.config/nvim/lua/configs/config.lua

-------------------
-- Configurações --
-------------------

vim.opt.number = true               -- Números de linha
vim.opt.tabstop = 4                 -- Tabs com 4 espaços
vim.opt.shiftwidth = 4              -- Indentação com 4 espaços
vim.opt.expandtab = true            -- Converter tabs para espaços
vim.opt.termguicolors = true        -- Cores verdadeiras
vim.opt.cursorline = true           -- Destaca a linha atual
vim.opt.cursorlineopt = "number"    -- Destaca apenas o número

-- Habilita/Desabilita cursor piscante
_G.blinkingcursor = function(execute)
    if type(execute) ~= "boolean" then
        vim.notify("Erro no blinkingcursor: Valor deve ser true ou false!", vim.log.levels.ERROR)
        return
    end

    if execute then
        vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50" ..
                           ",a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor" ..
                           ",sm:block-blinkwait175-blinkoff150-blinkon175"
    else

    end
end

blinkingcursor(true)

