Estudos node.js nesse curso
https://www.youtube.com/watch?v=LLqq6FemMNQ&list=PLJ_KhUnlXUPtbtLwaxxUxHqvcNQndmI4B

# Curso de NodeJS

## O que é Node?

Um interpretador Javascript que não depende do navegador, ou seja, ele é totalmente desvinculado do navegador.

Node mudou o mundo de javascript tirando a linguagem do navegador.

As duas bases do node são:

O motor V8 que é responsável por entender o javascript.

A LibUV que é uma biblioteca que deu caracteristicas de backend para o node.

### Vantagens

* Muito Leve
* Usa pouca memória Ram
* Melhor aproveitamento da CPU
* Utiliza javascript
* Tem um dos maiores ecossistemas de bibliotecas, módulos e pugins (NPM)


## Instalação do node

* url => nodejs.org


## Módulos

Módulos é a divisão do código, em vários arquivos, parecido com os componentes em react.

Para exportar um módulo use module.export = nome_da_função

Para chamar o módulo no arquivo principal use require("./endereço_do_arquivo") mas é preciso guardar essa requisição em uma variável.

Ex: var Soma = require("./soma")

Require é uma função nativa do javascript, que vai importar o que foi exportado no arquivo referenciado.

## Protocolo

Http => Hypertext Transfer Protocol

HTTP é um protocolo de transferência que possibilita que as pessoas que inserem a URL do seu site na Web possam ver os conteúdos e dados que nele existem.

É um protocolo que permite que um cliente se comunique com o servidor.

O node tem um módulo http nativo, que é o módulo http, você pode ter acesso a ele da sequinte forma:

var http = require('http')

Para abrir o servidor http é necessário chamar as funções createServer().listen(porta)

Ex: http.createServer().listen(8081)

console.log("servidor está rodando")

A função createServer() aceita uma função de callback que recebe dois parametros, o req e o res, o req é a requisição e o res é a resposta enviada ao usuário.

Ex: http.createServer(function(req, res){
    res.end("Olá")
}).listen(8081)