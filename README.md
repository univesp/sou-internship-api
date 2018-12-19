# INTERNSHIP API

## Pré-requisito

Antes de rodar o projeto é necessário que você tenha instalado na sua máquina o * **[Docker](https://www.docker.com/) (docker compose)** - Para instalar o docker, [consulte a documentação oficial](https://docs.docker.com/engine/installation/) de acordo com seu sistema operacional.

## Instalando

Faça o fork do projeto em [UNIVESP](https://github.com/univesp/sou-internship-api)

### Desenvolvimento

Após os passos descritos acima:

**1**. Clone o projeto que realizou o fork e entre nele
```
$ git clone https://github.com/robsonarruda1/sou-internship-api.git
$ cd sou-internship-api
```

**2**. Copie e o arquivo .env.example se necessário edite
```
$ cp .env.example .env
```

**3**. Inicie a aplicação
```
$ docker-compose up --build
```

Este comando com o parametro '--build' é necessário somente a primeira vez que usar a aplicação após buildar uma vez use:
```
$ docker-compose up
```

## Usando a API

Para acessar os endpoits da aplicação, siga estes passos:

**1**. Inicie a aplicação
```
$ docker-compose up --build
```

**2**. Consulte as rotas na url: 'http://localhost:3001/rails/info/routes'

## Construído com

*[Ruby 2.5.1](https://www.ruby-lang.org/pt/)
*[Ruby On Rails 5.2.1](https://rubyonrails.org/)

## Mantenedores

Robson Arruda (https://github.com/robsonarruda1)

Thiago Rossi (https://github.com/ezequielor)

Ezequiel Ramos (https://github.com/tcalurarossi)