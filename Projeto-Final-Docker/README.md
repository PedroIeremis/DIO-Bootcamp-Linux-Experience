## Provisionamento de Infraestrutura com Containers Docker

O script __up-service.sh__ estará executando o docker-compose.yml, em backgroup, e indicando como será acessada a Infraestrutura.

O script __down-service.sh__ estará executando o destroy em toda a Infraestrutura.

E o __docker-compose.yml__, é o arquivo de provisionamento da Infraestrutura a partir da Conteinerização em Docker. É quem faz a Real Mágica.

---

Obtenha o repositorio locamente, da maneira que o [README](https://github.com/pedroieremis/DIO-Bootcamp-Linux-Experience/blob/main/README.md) inicial demonstra e faça os passos abaixo:

Entre neste diretório:
```shell
cd DIO-Bootcamp-Linux-Experience

cd Projeto-Final-Docker
```

Dê permissão de execução, se necessário for:
```shell
chmod +x up-service.sh
```
```shell
chmod +x down-service.sh
```

Execute o Script para __Subir__ a Infraestrutura:
```shell
./up-service.sh
```

Execute o Script para __Parar__ a Infraestrutura:
```shell
./down-service.sh
```