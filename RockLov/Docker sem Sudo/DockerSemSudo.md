# Docker sem Sudo
## Liberando a permissão de adm pro Docker
'''sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker'''
Após isso fechei o Putty e abri a máquina virtual pelo VirtualBox, e digitei:
'''sudo halt'''
Reiniciei a máquina e abri novamente o Putty.
