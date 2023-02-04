## Criação e Permissões de usuários

O Script "iac1.sh" criará usuários especificos, grupos específicos, dando permissões específicas. De forma adicional e a diferenciar do projeto, usei o comando ``passwd -d -e -q <user>`` para que seja exigido configuração de senha no próximo login dos usuários criados.

---

Obtenha o repositorio locamente, da maneira que o [README](https://github.com/pedroieremis/DIO-Bootcamp-Linux-Experience/blob/main/README.md) inicial demonstra e faça os passos abaixo:

Entre neste diretório:
```shell
cd DIO-Bootcamp-Linux-Experience

cd Script-Provisionamento-Usuarios
```

Dê permissão de execução, se necessário for:
```shell
chmod +x iac1.sh
```

Execute o Script:
```shell
./iac1.sh
```
