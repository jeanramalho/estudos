# Fundamentos do Nest.js & Prisma

### O que é um microsserviço

Arquitetura monolítica é um sistema único, não dividido, que roda em um único processo, uma aplicação de software em que diferentes componentes estão ligados a um único programa dentro de uma única plataforma.

O problema dessa arquitetura é quando é preciso escalar a aplicação, a aplicação precisa de mais recursos pra certa parte da aplicação, e acaba derrubando outras partes da aplicação.

Já em microsserviços, a arquitetura é baseada em dividir a aplicação em várias aplicações menores e independentes.

Microsserviços impacta muito mais na hospedagem e escalagem da aplicação do que no código.

Quando trabalhamos com microsserviços é necessário que exista independencia do banco de dados, ou seja, um banco de dados para cada microsserviço.