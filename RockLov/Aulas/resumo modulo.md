# Adeus na minha máquina funciona
Nesta aula é comentado sobre a importância de um ambiente de testes para que não haja conflitos na hora de resolver algum bug em uma feature devido ao ambiente em que ela foi desenvolvida ser diferente do ambiente em que ela é posta em produção. 
É dada uma explicação sobre docker, API, banco de dados e web.

## Docker só funciona em Linux
### VirtualBox
Será contruída uma máquina virtual com uma versão do Ubunto instalada, onde será upada todo o serviço do Doccker.

# Instalando o VirtualBox

## Instalação

Para instalar o [VirtualBox](https://www.virtualbox.org) basta fazer o download do Windows Host e executar o instalador.


## Descobrindo o programa

Clicar em "Novo" para criar uma máquina virtual

Selecione "Linux" em "Tipo" e "Ubuntu" em "Versão"


# Ubuntu Server com Docker
## Download Ubuntu
Abrindo o site da [Ubuntu](https://ubuntu.com) e indo em Downloads -> Ubuntu Server e fazer o download da ISO
## Instalação Ubuntu
Verificar se Virtualização está habilitada através do Gerenciador de Tarefas na aba de Desempenho
Após isso, abrir VirtualBox, criar uma nova máquina virtual, nomear ela, escolher tipo e versão e selecionar o arquivo ISO do Ubuntu que acabou de ser instalado. Configurar de acordo com a preferência, usei 2 GB de RAM, 1 processaro e 10 GB de Armazenamento pro Disco Virtual.
## Configurando a Máquina Virtual
Ir em Configurações da Máquina Virtual -> Armazenamento e adicionar a ISO do Ubuntu.
Após isso iniciei a máquina e fiz todas configurações instalando o Docker.

# SSH com Putty
## Reconfiguração da Máquina Virtual
Desliguei a máquina e liguei novamente em modo Headless, após isso, destaquei a GUI.
## Instalando o Putty
Acessei o [site do Putty](www.putty.org), fiz o download e instalei.
## Conectando no Servidor Linux
Abrindo o VirtualBox e indo em configurações da máquina, eu adicionei um redirecionamento de portas com tanto a porta do hospedeiro quanto a do convidado como 22, salvei e conferi o ip do host.
Adicionei esse IP no Putty e criei uma nova sessão.
Dessa forma consigo usar a máquina virtual através dele.

# Docker sem Sudo
## Liberando a permissão de adm pro Docker
```
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```
Após isso fechei o Putty e abri a máquina virtual pelo VirtualBox, e digitei:
``` sudo halt ```

Reiniciei a máquina e abri novamente o Putty.

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

# Desliguei meu Computador. E agora?
## Upando novamente os containers
Ligar a máquina e acessar através do Putty, acessar o compose e subir os containers
```
cd rocklov-dc
docker-compose up -d
```

