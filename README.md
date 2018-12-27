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

**2**. Copie o arquivo .env.example se necessário edite
```
$ cp .env.example .env
```

**3**. Copie o arquivo .Gemfile.lock.example se possuir ruby em sua máquina basta rodar bundle
```
$ cp Gemfile.lock.example Gemfile.lock
```

**4**. Entre na pasta config e copie o arquivo secrets.yml.example, *é necessário editar este arquivo
```
$ cd config
$ cp secrets.yml.example secrets.yml
```

**5**. Inicie a aplicação
```
$ docker-compose up --build
```

Este comando com o parametro '--build' é necessário somente a primeira vez que usar a aplicação após buildar uma vez use:
```
$ docker-compose up
```

## Usando a API

Para acessar os endpoints da aplicação, siga estes passos:

**1**. Inicie a aplicação
```
$ docker-compose up --build
```

**2**. Consulte a documentação da API *[internship::v1](https://github.com/univesp/sou-internship-api/blob/devel/docs/intershipV1.md)

## Contribuindo

Com o fork feito siga estes passos:

**1**. Adicione o remoto univesp
```
$ git remote add upstream https://github.com/univesp/sou-internship-api.git
```
* Após este passo você deverá possuir dois remotos

Exemplo:
```
$ git remote -v
    origin	https://github.com/robsonarruda1/sou-internship-api.git (fetch)
    origin	https://github.com/robsonarruda1/sou-internship-api.git (push)
    upstream	https://github.com/univesp/sou-internship-api.git (fetch)
    upstream	https://github.com/univesp/sou-internship-api.git (push)
```

**2**. Atualize as referências dos remotos
```
$ git fetch --all
```

**3**. Mantenha sua branch devel sempre atualizada com o upstrem
```
$ git merge upstream/devel
```
* Lembre-se você deve estar na branch devel localmente

**4**. Alterações feitas, comite e envie para seu repositório
```
$ git push origin HEAD
```

**5**. Pull Request

No github clique em 'New Pull Request', selecione a branch devel do seu repositório e a devel do repositório da univesp, pronto seu código será analisado e poderá ser aprovado ou comentado para correções.

## Construído com

*[Ruby 2.5.1](https://www.ruby-lang.org/pt/)

*[Ruby On Rails 5.2.1](https://rubyonrails.org/)

## Mantenedores

[Robson Arruda](https://github.com/robsonarruda1)

[Thiago Rossi](https://github.com/tcalurarossi)

[Ezequiel Ramos](https://github.com/ezequielor)