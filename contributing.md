#Contribuindo
# Contributing

Para contribuir com este projeto siga os passos descritos abaixo:

**1**. Fork o projeto em Faça o fork do projeto em [UNIVESP](https://github.com/univesp/sou-internship-api)

Com o fork feito siga estes passos:

**2**. Clone o repositório que você fez o fork e entre nele
```
$ git clone https://github.com/robsonarruda1/sou-internship-api.git
$ cd sou-internship-api
```

**3**. Adicione o remoto univesp
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

**4**. Atualize as referências dos remotos
```
$ git fetch --all
```

**5**. Mantenha sua branch devel sempre atualizada com o upstream
```
$ git merge upstream/devel
```
* Lembre-se você deve estar na branch devel localmente

**6**. Alterações feitas, comite e envie para seu repositório
```
$ git push origin HEAD
```

**7**. Pull Request

No github clique em 'New Pull Request', selecione a branch devel do seu repositório e a devel do repositório da univesp, pronto seu código será analisado e poderá ser aprovado ou comentado para correções.