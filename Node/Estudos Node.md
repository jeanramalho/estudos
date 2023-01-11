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

* Site official do mySQL
https://www.mysql.com/

Baixe a versão community, que é a versão gratuita.

Baixe a versão offline para ter o instalador completo.

Ao instalar configure a senha para um usuário root, que é um usuário que terá permissão de tudo.

No windows o mysql não é linkado automaticamente no cmd.
É preciso linkar manualmente, criando uma variável de ambiente do tipo path.

Ao instalar o mysql é instalado o mysql command line onde você pode usar linhas de comando no mysql sem ter a variável de ambiente linkada.

## Criando tabelas no MySQL

Abra o cmd com variável de ambiente linkada ou o mysql command line e digite o comando:

* mysql -h localhost -u root -p

O parâmetro -h serve para apontar para qual servidor você quer se conectar, e o localhost é o servidor local, o parametro -u é o usuário, root é o usuário o parâmetro -p é a senha, após digitar enter será solicitada a senha configurada para o usuário root na instalação do mysql.

Abaixo alguns comandos mysql, sempre que usar um comando sql via linha de comando é necessário usar o ; no final.

É possível guardar arquivos no mySQL através do tipo de dados Blob.

O comando para apresentar os bancos de dados disponíveis é:

* show DATABASES;

Criar banco de dados

* CREATE DATABASE NomeDoBanco;

Para acessar o banco de dados específico:

* USE NomeDoBanco;

Exibir todas as tabelas do banco de dados selecionado.

* SHOW TABLES;

Criar tabela:

* CREATE TABLE NomeDaTabela(
    coluna1 VARCHAR(NUMERO DE CARACTERES),
    coluna2 VARCHAR,
    coluna3 INT
)

Ver estrutura da tabela

* DESCRIBE NomeDaTabela

## Manipulando dados no MySQL

Sempre que quiser inseruir um novo dado no mySQL o comando a se utilizar é o comando insert into, ou seja "insira dentro".

Inserir dados na tabela

* INSERT INTO nome_tabela(campo1, campo2, campo3) VALUES (
    "valor do campo1",
    "valor do campo 3",
    3
);

Para selecionar todos os dados utilize * para selecionar dados específicos utilize o nome dos campos na tabela.

Lista todos os dados da tabela

* SELECT * FROM nome_tabela;

Lista somente dados informados da tabela selecionada

* SELECT campo1 FROM nome_tabela

Para listar somente determinadas linhas da tabela é necessário usar uma condição chamada WHERE.

Lista dados de acordo com a condição informada.

* SELECT * FROM nome_tabela WHERE campo3 = 3;

## Deletando registros no mySQL

Para deletar um registro é necessário utilizar o comando DELETE

Deletando toda a tabela

* DELETE FROM nome_tabela;

Deletando uma linha especifica

* DELETE FROM nome_tabela WHERE campo1 = "registro do campo 1"

Nunca utilize o comando DELETE sem WHERE sem ter a certeza que quer deletar toda a tabela.

## Atualizando registros no MySQL

O comando para atualizar registros no mySQL é o UPDATE.

Atualizar todo o registro de um campo da tabela

* UPDATE nome_tabela SET campo1 = "Campo de Teste"

Atualizar uma linha específica

* UPDATE nome_tabela SET campo1 = "campo de teste", campo2 = "testando" WHERE campo1 = "registro do campo 1"

Nunca utilize o comando UPDATE sem a condição WHERE a menos que tenha certeza que queira atualizar o campo de todas as linhas da tabela.

## Sequelize

Esse módulo te ajuda a fazer as operações de MySQL diretamente do node.js

O Sequelize não trabalha apenas com o mySQL, pois é uma ferramenta bem versátil e trabalha com outros bancos de dados também.

Para instalação do Sequelize utilize o seguinte comando com o terminal dentro da pasta do projeto.

* npm install --save sequelize

Para trabalhar com o sequilize junto como mySQL é preciso instalar outro módulo, o mySQl2.

* npm install --save mysql2

O sequelize é um ORM (Object-Relational Mapping), que é uma ferramenta que abstrai toda a camada do banco de dados, e facilita muito o contato com o banco de dados, onde você pode executar os comando SQL diretamente no código do programa.

## Como se conectar ao banco de dados mySQL

Para conexão utilize os seguintes comandos:

* const Sequelize = require('sequelize')
* const sequelize = new Sequelize('nome do banco de dados', 'usuário do bando de dados', 'senha do usuário passado' ), {
    host: "servidor ex: localhost",
    dialect: "tipo de banco de dados no nosso caso: mysql"
})

Para testar se a conexão está funcionando utilize:
* sequelize.authenticate().then(function(){
    console.log("Conectado com sucesso")
}).catch(function(erro){
    console.log(`Não foi possível conectar: ${erro}`)
})

## Handlebars

O handlebars é um template enginers que dá muitas funcionalidades ao html, juntando funções javascript ao html, parecido com o jsx do react.

Para instalação do handlebars e utiliza-lo junto com o express utilize o comando:

* npm install --save express-handlebars

## Criando um formulario de cadastro de post com node.js

Crie as rotas.
Após criar o arquivo main.handlebar crie os arquivos dos elementos html que deseja exibir no front, como se fossem componentes do react.
na rota criada, ao invés de utilizar a função app.send() utilize a função app.render() passando o nome do arquivo que deseja renderizar nessa rota dentro do parenteses da função render entre aspas simples.

Ex: app.render('formulario')

## Como enviar dados do formulário

Existem 2 maneiras de enviar dados do formulário, que são através do método GET e através do método POST, e existe uma diferença grande de segurança entre esses métodos.

Ao realizar o envio através do método GET os dados são passados via URL

Ao realizar o envio através do método POST os dados são passados escondidos, através do backend.

Não é possível acessar rotas do tipo POST via URL.

## Body Parser

É uma ferramenta utilizada para receber dados de qualquer formulário.

Para instalação use:
* npm install --save body-parser

## Estruturando o banco de Dados

Cria banco de dados
* CREATE DATABASE postapp

Escolhe banco de dados a ser usado
* USE postapp

Visualiza tabelas
* SHOW TABLES

Sempre após realizar o teste de conexão com o banco de dados, comente ou exclua a linha 

Post.sync({force: true})

pois se não sempre que a conexão for realizada denovo, os dados da tabela serão excluídos e recriada uma nova estrutura do zero.

## Pegando dados do formulário

Para pegar dados do formulário e passar para banco de dados, utilize o método de criação chamando a constante criada para receber e utilizando o .create como no exemplo abaixo.

* Post.create

Utilize o .then e o .catch para tratar erros e sucesso.

Para redirecionamento utilize o comando no then da rota
* res.redirect('/')