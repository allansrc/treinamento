# App Exemplo de Clean Arch

Os benefícios do Clean Arch/Dart
- Legibilidade
- Manutenibilidade
- Testabilidade
- Escalabilidade

## Prática
- Divisão por feature;
- Arquitetura de Feature Modularizada;

## camadas /Layers
- Presenter: recursos visuais;
-> Pages/Screens
-> Widgets/Componentes
-> Stores/Controllers/States

- Domain
-> Repository (Abstrações)
-> UseCase (Abstrações)
-> UseCase (Implementações)
-> Errors/Failures
-> Entity: campos
-> Parameters/Mappers
-> Service/Utils (Abstrações)
-> Typedef

- infra/data
-> Reposity (implementação)
-> Service/Utils (implementação)
-> Datasource (Abstrações)
-> Datasource (implementação)
-> Driver
-> Models: Campos, Metodos, converters

<!-- Nomencraturas -->

# Definição da Feature

- realizar uma requisição para a api do github
- tratar possiveis erros
- apresentar os dados da requisição em tela
- gerir o estado da tela devidamente
