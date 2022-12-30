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

## Express/Rotas

Principal framework do node para criação de servidores. Um framework minimalista, rápido que aumenta a produtividade do node.

Para utilizar o express é necessário utilizar o npm.
Para salvar os arquivos do módulo dentro do projeto use o --save

Ex: npm install express --save

O Express é um módulo, e para carregar o módulo, é aquele procedimento que já vimos.

const express = require('express')

Após fazer a requisição do express instancie dentro da variável app.

const app = express()

Use const para requere e instanciar o express para deixar sua aplicação mais segura.

Para abrir o servidor com express é muito simples basta chamar a const app e chamar a função listen passando a porta desejada.

Ex: app.listen(8081)

Essa linha de código deve ser a última, e toda aplicação deve ser programada acima dessa linha.

A função lisen do express quando é executada, ela dispara um evento e através desse evento nós conseguimos disparar uma função de callback.

Ex: app.listen(8082, function(){
    console.log("Servidor rodando na porta 8081")
})

A maioria das funções do express aceita funções de callback.

Para criar rotas com o express use o a const app chame o método http desejado passe o nome da rota e configure a função de callback recebendo os parametros req e res.

Ex: app.get("/boasvindas", function(req, res){
    res.send("Seja bem vindo a rota get")
})

Rotas são os caminhos da sua aplicação!

O express e um framework orientado a rotas.

## Parametros 

Os parâmetros são formas de tornar as rotas dinâmicas.

Para identificar um parâmetro na rota é preciso usar a /: após a rota base.

Dentro da função de uma rota só é possivel usar a função res.send() apenas uma vez.

## Nodemon

Para instalar o nodemon use:

* npm install nodemon -g

A flag -g é para que o nodemon seja instalado globalmente, não somente no projeto especificado.

Para executar o projeto, após instalar o nodemon, utilize o nodemon ao invés de node.

## Renderizar arquivos HTML com node.

Para renderizar um arquivo HTML ao invés de utilizar res.send() use:

* res.sendFile(__dirname + "/caminho/do/aquivo.html")

A variável __dirname pega o caminho do diretório atual.

## Instalando o MySQL

O mySQL é um sistema de gerenciamento de banco de dados. E quando estamos criando uma aplicação back-end é necessário ter um lugar onde guardar dados.
O mySQL serve pra isso.