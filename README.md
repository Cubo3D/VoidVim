# VoidVim

>[!WARNING]
> Muita coisa não foi testada ainda, e possuí plugins que nem estão configurados, e vou precisar da ajuda da comunidade porque eu acbei me perdendo no código, e preciso anotar todos os erros, então se encontrar um, POR FAVOR me avise!

![Ícone do Voidvim, caso não esteja claro](https://filesbycubo3d.vercel.app/filesbyvoidvim/voidvimlogo.jpg)

O VoidVim é uma nova distribuição NeoVim que foi criada por um programador solo Brasileiro🇧🇷.

Ele tende a ser leve, porque a ideia surgiu de quando estava usando o vscode mas acabei ficado frustrado por ele viajar muito no meu notebook intel pentium, tinha percebido que ele ficou muito mais rápido no NeoVim, então eu resolvi fazer.

Ele foi criado do 0!

Obs: Eu criei ele sem colar ele em um repositório, fiz a base e já lancei. NÃO REPITA ISSO eu aceito enfrentando problemas e passei pela independência de eu perder tudo se meu notebook desse problema (detalhe: eu só fiz isso porque eu queria saber se realmente preciso, e aprender na prática).

Ele não possuí uma Wiki, pois ele não precisa, os comentários explícitos tudo no preço código

Mas para facilitar eu irei colar todos keymaps aqui nesse arquivo markdown(mais baixo)

## Requisitos

Git e wget instalados

POR FAVOR, NÃO USE ELE NO WINDOWS, ELE FOI TOTALMENTE CRIADO NO E PARA LINUX, mas posso tentar desenvolver uma versão pro Windows

## Instalação

```
wget https://filesbycubo3d.vercel.app/filesbyvoidvim/instalacao.sh && sh instalacao.sh
```

Quando quiser atualizar os plugins, usando o :Lazy update, deixe que eu faço, irei atualizar a cada semana, oferecendo correção de bugs novos que vem na atualização e rafatorando partes que, antes não eram, obsoletas

## mapas de chaves

```
\gg: Abre o lazygit

\Q: Fecha sem salvar o arquivo(criado a fim de não precisar usar como duas mães)
\q: Fecha o arquivo(criado a fim de não precisar usar como duas mães)
\W: Salva e fecha o arquivo(criado a fim de não precisar usar como duas mães)
\w: Salva o arquivo(criado a fim de não precisar usar como duas mães)

\e: Abre/fecha o NeoTree
\v: Foca no buffer do NeoTree

\t: Abre/fecha o terminal flutuante(a sessão aberta no terminal ainda continua)
\tn: Cria uma nova sessão do terminal flutuante
\h: Volta para a sessão que estava aberta antes
\l: Vai para a próxima sessão aberta do terminal flutuante

\d: Abre o Dashboard

\s: Executa/para o live-server
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

