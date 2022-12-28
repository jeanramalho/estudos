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