# Infraestrutura como Código (IaC)

Este projeto automatiza a criação de infraestrutura de usuários, grupos, diretórios e permissões em sistemas Linux. Útil para padronizar ambientes de trabalho.

## Funcionalidades
- Criação de diretórios (/publico, /adm, /ven, /sec)
- Criação de grupos (GRP_ADM, GRP_VEN, GRP_SEC)
- Adição de usuários aos grupos
- Configuração de permissões

## Como Executar
1. Clone o repositório: `git clone https://github.com/seu-usuario/infraestrutura-iac.git`
2. Dê permissões ao script: `chmod +x provisionamento.sh`
3. Execute o script: `sudo ./provisionamento.sh`
