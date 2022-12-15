# Fundamentos do Nest.js & Prisma

### O que é um microsserviço

Arquitetura monolítica é um sistema único, não dividido, que roda em um único processo, uma aplicação de software em que diferentes componentes estão ligados a um único programa dentro de uma única plataforma.

O problema dessa arquitetura é quando é preciso escalar a aplicação, a aplicação precisa de mais recursos pra certa parte da aplicação, e acaba derrubando outras partes da aplicação.

Já em microsserviços, a arquitetura é baseada em dividir a aplicação em várias aplicações menores e independentes.

Microsserviços impacta muito mais na hospedagem e escalagem da aplicação do que no código.

Quando trabalhamos com microsserviços é necessário que exista independencia do banco de dados, ou seja, um banco de dados para cada microsserviço.

Para isso usamos a duplicidade de dados, nos microsserviços que precisem de informações de outros microsserviços.

### Nest.js

O Nest.js é um framework opinado, ele traz conveção, onde você não é 100% livre pra criar arquivos, ele tem arquivos pré-definidos, modelos pré-definidos. Auxilia na produtividade pois já vem com muitas coisas prontas.

Documentação do Nest.js
https://docs.nestjs.com/

Instalar o Nest.js
$ npm i -g @nestjs/cli

Criar um novo projeto no Nest.js
$ nest new project-name

### Decorators

Decorators são funções que dão poder a atributos, métodos e até mesmo às classes.


### Services

São classes sem um propósito específico, pode ser qualquer coisa dentro do nest.js. Uma classe genérica que vai ser utilizada dentro dos controllers ou dentro dos próprios services.

### Inversão de Dependencia

Quando uma classe que recebe suas dependencias através do construtor. Quem for estanciar a classe vai dizer quais são as dependencias dela.

### Injeção de Dependencia

Uma forma de automatizar a inserção das dependencias no momento em que as classes forem instanciadas. Ou seja a partir do momento que o controller precisar de uma dependencia de um determinado tipo, automaticamente é detectado que dentro do módulo existe uma classe com o determinado tipo, e essa classe precisa ter o decorator @Injectable.

### SQLite

É possível utilizar o sqlite que é um banco de dados de arquivo físico.
Com o prisma, é possível fazer uso desse model de banco de dados.