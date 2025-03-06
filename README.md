# 🍔 Lanchonete PosFiap 
![](https://img.shields.io/badge/Amazon_AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white) ![](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white) ![](https://img.shields.io/badge/kubernetes-326ce5.svg?&style=for-the-badge&logo=kubernetes&logoColor=white) ![](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)

## Sobre o Projeto

Esse e um projeto do Tech Challenge fiap, sobre uma uma lanchonete de bairro que está expandindo devido seu grande sucesso. Implementar um sistema de controle de pedidos, possa atender os clientes de maneira eficiente, gerenciando seus pedidos e estoques de forma adequada

Esse repositorio serve para: 

1.Criação da infraestrutura com Terraform (**AWS**)

2.Deploy com Kubernet pra a AWS

## Tecnologias Utilizadas

- **Orquestração**: Amazon EKS (Elastic Kubernetes Service)
- **Infrastrutura**: Terraform
- **CI/CD** : GitHub Action


## Estrutura do Projeto

A estrutura do repositório segue a seguinte organização:

```
├── /                   # Scripts do Terraform
├── k8s/                # Manifests do Kubernetes
├── README.md           # Este arquivo
```