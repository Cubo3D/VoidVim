# VoidVim

![Ícone do Voidvim, caso não esteja claro](https://filesbycubo3d.vercel.app/filesbyvoidvim/voidvimlogo.jpg)
(Normalmente ele tem o fundo transparente, mas se eu colocar no github vai ficar difícil de visualizar)

O VoidVim é uma nova distribuição NeoVim que foi criada por um programador solo Brasileiro🇧🇷.

Ele tende a ser leve, porque a ideia surgiu de quando estava usando o vscode mas acabei ficado frustrado por ele viajar muito no meu notebook intel pentium, tinha percebido que ele ficou muito mais rápido no NeoVim, então eu resolvi fazer.

Ele foi criado do 0!

Ele não possuí uma Wiki, pois ele não precisa, os comentários explícitos tudo no preço código

Mas para facilitar eu irei colar todos keymaps aqui nesse arquivo markdown(mais baixo)

## Prints

![dashboard](https://filesbycubo3d.vercel.app/filesbyvoidvim/dashboard.png)

![código](https://filesbycubo3d.vercel.app/filesbyvoidvim/codigo.png)

![lazygit](https://filesbycubo3d.vercel.app/filesbyvoidvim/lazygit.png)

![lazy.nvim](https://filesbycubo3d.vercel.app/filesbyvoidvim/lazynvim.png)

## Depedências

1. Wget(Para a instalação, só é necessário para poder instalar ele);

2. Npm(Sem ele você não vai conseguir fazer download da maioria dos plugins, colocado como uma depedência obrigatória);

3. Nvm(Serve para usar o npm sem precisa do root(opcional, mas recomendado até mesmo fora do projeto));

4. Git(Para poder usar em plugins git(opcional));

5. LazyGit(Para poder usar o plugin do lazygit(opcional))

Em atualizações futuras o script de atualização vai instalar automáticamente as depedências

>[!TIP]
>Tamnho da fonte do terminal como 10 para uma melhor experiência(Opcional, mas recomandado);

>[!WARNING]
>POR FAVOR, NÃO USE ELE NO WINDOWS, ELE FOI TOTALMENTE CRIADO NO LINUX E PARA LINUX! Mas posso tentar desenvolver uma versão pro Windows

## Instalação

```bash
wget https://filesbycubo3d.vercel.app/filesbyvoidvim/instalacao.sh && sh instalacao.sh
```

Para atualizar o VoidVim, execute :VNUpdate(Nas versão alpha se usava :VVUpdate)

## Keymaps

```
\gg: Abre o lazygit

\Q: Fecha sem salvar o arquivo(criado a fim de não precisar usar como duas mães)
\q: Esconde o scroll que tem no lado para melhorar a visão
\W: Salva e fecha o arquivo(criado a fim de não precisar usar como duas mães)
\w: Salva o arquivo(criado a fim de não precisar usar como duas mães)

\e: Abre/fecha o NeoTree
\v: Foca no buffer do NeoTree

\t: Abre/fecha o terminal flutuante(a sessão aberta no terminal ainda continua)
\tn: Cria uma nova sessão do terminal flutuante
\h: Volta para a sessão que estava aberta antes
\l: Vai para a próxima sessão aberta do terminal flutuante

\d: Abre o Dashboard

\s: Executa o live-preview
\S: Para o live-preview

\bd: Apaga os buffers

Ctrl + d: Vai para o próximo buffer conforme o bufferline
Ctrl + a: Vai para o buffer anterior conforme o bufferline
```

Keymaps do LSP:
```
gd: Vai direto para definição da função/variável sob o cursor. Execute no modo normal

K: Mostra informações sobre o elemento sob o cursor

\rn: Renomeia a variável/função sob o cursor de todo o arquivo

\ca: Mostra ações do código disponíveis. Execute no modo normal/visual

gr: Lista todas as referências á função/variável sob o cursor. Execute no modo normal
```

Cada vez mais irei tentar melhorar o VoidVim

