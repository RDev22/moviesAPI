# README

<h1 align="center"> Netflix API </h1>

<p align="justify">Esse projeto teve como objetvio o desenvolvimento de uma API capaz de fazer a leitura e analisar um arquivo .csv, alimentar a base de dados com os dados desse arquivo e, também, exibir os registros no formato JSON. O arquivo .csv contém uma lista com uma variedade de filmes e séries disponíveis na plataforma Netflix.</p>

* Instalação:
* 
 1. git clone https://github.com/RDev22/moviesAPI.git
 2. cd moviesAPI
 3. bundle install
 4. yarn install
 5. rails db:create db:migrate

* Iniciar:
* 
 rails s

* Teste
* 
 rails test

* Como usar a API:
 
  Para listar todos os filmes:
  http://localhost:3000/movies

É possível buscar os títulos utilizando os filtros: title, year, gender e country:
http://localhost:3000/movies?title=clockwork

* Teste:
* 
  rails test

  http://localhost:3000/movies?title=clockwork

* Services (job queues, cache servers, search engines, etc.)


* ...
