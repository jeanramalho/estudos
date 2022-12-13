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