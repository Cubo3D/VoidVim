# VoidVim

![Ícone do Voidvim, caso não esteja claro](https://filesbycubo3d.vercel.app/filesbyvoidvim/voidvimlogo.jpg)
(Normalmente ele tem o fundo transparente, mas se eu colocar no github vai ficar difícil de visualizar)

O VoidVim é uma nova distribuição NeoVim que foi criada por um programador solo Brasileiro🇧🇷.

Ele tende a ser leve, porque a ideia surgiu de quando estava usando o vscode, mas acabei ficando frustrado por ele ser muito lento no meu notebook intel pentium, tinha percebido que ele ficou muito mais rápido no NeoVim, então eu resolvi fazer.

Ele foi criado do 0 sem usar o kickstart!

Ele não possuí uma Wiki, pois ele não precisa, os comentários explicam tudo no próprio código

Mas para facilitar eu irei colocar umas informações nesse arquivo markdown(mais abaixo)

## Prints

![dashboard](https://filesbycubo3d.vercel.app/filesbyvoidvim/dashboard.png)

![código](https://filesbycubo3d.vercel.app/filesbyvoidvim/codigo.png)

![lazygit](https://filesbycubo3d.vercel.app/filesbyvoidvim/lazygit.png)

![lazy.nvim](https://filesbycubo3d.vercel.app/filesbyvoidvim/lazynvim.png)

## Depedências

1. Versão mais recente do NeoVim(não é necessário beta, aliás ele não vai usar os recursos da versão beta)

2. Wget(Para a instalação);

3. Npm(Sem ele você não vai conseguir fazer download da maioria dos plugins, colocado como uma depedência obrigatória);

4. Pipx(Para poder instalar o formatador para python)

5. Uma fonte nerd(opcional mas recomendado para poder ver os ícones)

6. Nvm(Serve para usar o npm sem precisa do root(opcional, mas recomendado até mesmo para outras coisas));

7. Git(Para poder usar em plugins git(opcional));

8. LazyGit(Para poder usar o plugin do lazygit(opcional))

Em atualizações futuras o script de atualização vai instalar automáticamente as depedências, inclusive o NeoVim

> [!TIP]
> Tamnho da fonte do terminal como 10 para uma melhor experiência(Opcional, mas recomandado);

> [!WARNING]
> POR FAVOR, NÃO USE ELE NO WINDOWS, ELE FOI TOTALMENTE CRIADO NO LINUX E PARA LINUX! Mas posso tentar desenvolver uma versão pro Windows (mas pode demorar muito porque eu abandonei o Windows por completo)

## Instalação

```bash
wget https://filesbycubo3d.vercel.app/filesbyvoidvim/instalacao.sh && sh instalacao.sh
```

> [!IMPORTANT]
> O VoidVim possuí um comandos chamado de :VNUpdate e quando tem atualização nesse comando, recomenda-se fazer a atualização manualmente, que para fazer isso, é só entrar na pasta de configuração do VoidVim e executar "git pull" (sem as aspas)
> Na primeira execução, pode falar que tem um erro, falando que não foi encontrado o vscode-html-language-server, vscode-css-language-server e o emmet-ls, não se preocupe, ele só aparece somente na instalação e não afeta nada no programa. Eu estou trabalhando para retirar isso.

## Informações gerais da distribuição

### Keymaps

```
# LazyGit
\gg: Abre o lazygit

# ScollView
\q: Esconde o scroll que tem no lado para melhorar a visão

# NeoTree
\n: Abre/fecha o NeoTree
\nf: Foca no buffer do NeoTree

# Terminal flutuante
\t: Abre/fecha o terminal flutuante(a sessão aberta no terminal ainda continua)
\tn: Cria uma nova sessão do terminal flutuante
\th: Volta para a sessão que estava aberta antes
\tl: Vai para a próxima sessão aberta do terminal flutuante

# Dashboard
\d: Abre o Dashboard

# Live-Preview
\ls: Executa o live-preview
\lS: Para o live-preview

#BufferLine
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

### Plugins

Quantidade de plugins: 40

Plugins instalados e informações dele (vocês tão me devendo uma por eu te escrito tudo isso aqui em)
Lista dos principais plugins sem motrar as depedências

Dashboard: Funcionando

Neotree: Funcionando

LSPConfig: Funcionando

MasonLSPConfig: Funcionando

Mason: Funcionando

Nvim Illuminate: Funcionando

BufferLine: Funcionando

Conform: Funcionando

LazyGit: Funcionando

FloaTerm: Funcionando

Live Preview: Funcionando

Git Signs: Funcionando

Nvim ScrollViewer: Funcionando

Pear Tree: Funcionando

Which Key: Funcionando

UndoTree: Funcionando

Vim Fugitive: Funcionando

LuaLine: Funcionando

Oxocarbon: Funcionando

Render MarkDown: Funcionando

NeoVim Session Manager: Funcionando

Move Nvim: Funcionando, mas não por completo

Telescope: Funcionando, inclusive a ui também está

Nvim Notify: Funcionando

Nvim Tresitter: Não tenho certeza mas acho que está funcionando

Indent Blankline: Funcionando
