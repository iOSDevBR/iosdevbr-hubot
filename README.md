<img src="http://eng.rightscale.com/images/post-images/justas/hubot.png" width="20%" height="20%"/>

# Hubot do iOSDevBR

O hubot do iOSDevBR serve principalmente para garantir que o nosso [Código de Conduta][coc] está sendo respeitado, alertando casos de mensagens homóficas, racistas, machistas, etc.

Mas também serve pra divertir :tada:
> Você acabou de matar um panda ao escrever "iOS" errado.

Se tiver alguma ideia que seja legal e que acredite que será útil para o grupo, fique à vontade para adicionar um novo script ou alterar algum já existente.

Para mais informações, acesse a [documentação oficial][documentation].

[coc]: https://github.com/iOSDevBR/Codigo-De-Conduta
[documentation]: http://hubot.github.com


## Criando novos scripts

Um script que pode servir de exemplo pode ser encontrado em `scripts/thanks.coffee`. Dá uma olhada lá para ter uma ideia de como o hubot interage. Basicamente, ele atua em 2 casos principais: 

`message.hear` atua caso escute algum padrão de mensagem na sala em que ele está presente

`message.respond` atua respondendo ao usuário que mandou uma mensagem para ele. Para isso, é preciso mencioná-lo com o `@hubot: mensagem para o hubot`

Depois de criado o script, basta incluí-lo na pasta `scripts` e fazer um PR.

*OBS:*

1. Para as tarefas mais comuns, há uma grande chance de alguém já ter feito algo parecido. Você pode encontrar uma lista de scripts feitos [aqui][plugins-list].

2. Se ficar com dúvida de como fazer alguma coisa em CoffeeScript, pode acessar a [documentação da linguagem][coffeescript] ou tentar brincar com esse [REPL online][coffee-repl].

3. Para entender mais sobre scripting, acesse a [documentação de scripting](scripting-docs) do hubot.

[scripting-docs]: https://github.com/github/hubot/blob/master/docs/scripting.md
[coffeescript]: http://coffeescript.org/
[coffee-repl]: http://larryng.github.io/coffeescript-repl/
[plugins-list]: https://github.com/hubot-scripts

## Rodando o hubot localmente

Você pode testar suas modificações no hubot rodando o comando a seguir: 

*(obs: alguns plugins podem não se comportar como o esperado ao menos que algumas variáveis de ambiente tenham sido definidas corretamente.)*

    $ ./bin/hubot

Você verá uma saída no console parecida com essa:

    [Sat Feb 28 2015 12:38:27 GMT+0000 (GMT)] INFO Using default redis on localhost:6379
    hubot>

Depois disso, você pode rodar `hubot help` para se certificar que o hubot já está ouvindo os comandos:

    hubot> hubot help
    hubot animate me <query> - The same thing as `image me`, except adds [snip]
    hubot help - Displays all of the help commands that hubot knows about.
    ...

## Deploy

Quando o merge do PR é feito, ainda é preciso fazer o deploy do novo código do hubot. Pra isso, nós temos um outro **remote** do projeto hospedado no **Heroku**. Se depois de alguns minutos do merge ter sido feito, as alterações não tiverem surtido efeito, entre em contato com [um dos admins do grupo][admins].

[admins]: https://github.com/orgs/iOSDevBR/people
