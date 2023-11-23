
# <h1 align="center"> Netflix API </h1>

<p align="justify">🎯Esse projeto teve como objetivo a criação de uma API capaz de fazer a leitura, analisar os dados de um arquivo .CSV, alimentar a base de dados com os dados desse arquivo e, também, exibir os registros no formato JSON. O arquivo .CSV contém uma lista com uma variedade de filmes e séries disponíveis na plataforma Netflix.</p>

## 💻 Instalação:

Clone esse repositório e instale as dependências com os seguinte comandos:
```
git clone https://github.com/RDev22/moviesAPI.git
```
```
cd moviesAPI
```
```
bundle install
```
```
yarn install
```
```
rails db:create db:migrate
```

## Iniciar:
``` 
 rails s
```

## ☕ Como usar a API:
 
Para listar todos os filmes:
```
http://localhost:3000/movies
```

## 🚀 Rotas:

É possível buscar os títulos utilizando os filtros: title, year, gender e country:

title:
```
http://localhost:3000/movies?title=clockwork
```
year:
```
http://localhost:3000/movies?year=2011
```
gender:
```
http://localhost:3000/movies?gender=Tvshow
```
country:
```
http://localhost:3000/movies?country=Brazil
```


## 🔒 Teste
```
 rails test
```
```
http://localhost:3000/testing
```

* 200 OK - Mensagem após rodar o teste com sucesso:
```
{
  "message": "Ok! Tudo certo com o teste!"
}
```

## 🛠️ Tecnologias utilizadas:
* Ruby 3.1.2
* Rails 7.0.8
* PostgreSQL


