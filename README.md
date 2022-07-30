# DIO-Bootcamp-Linux-Experience

Para obter o clone do repositório e executar o iac1.sh:

```shell
git clone https://github.com/PedroIeremis/DIO-Bootcamp-Linux-Experience.git

chmod +x iac1.sh

./iac1.sh
```
---

O arquivo criará usuários especificos, grupos específicos, dando permissões específicas. E de forma adicional e para mudar, usei o comando ``passwd -d -e -q <user>`` para que seja exigido configuração de senha no próximo login dos usuários criados a partir do shell script.

---