# Subindo os Containers
## Baixando o DC
Clonei o [reposiório](www.gitlab.com/papito/rocklov-dc)
## Configurações
Abri o cmd como adm e acessei o aquivo hosts
```
cd drivers/etc
notepad hosts
```
E adicionei o ip de host da máquina e os nomes dos containers no arquivo
```
ip	rocklov-db
ip	rocklov-api
ip	rocklov-web
```
Configuei no VirtualBox mais redirecionamentos de portas para os containers serem acessados através do Putty
## Documentação da API e Ambiente de testes
[Documentação da API](rocklov-api:3333/api-docs)
[Ambiente de Testes](rocklov-web:3000)

