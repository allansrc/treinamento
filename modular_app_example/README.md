# modular_app_example

- Apps -> Modules ou micro-apps precisam de um entry point;

## App Module / Entry point
- Widget Wrapper / Casca -> app_widget.dart
- Binder / Module -> app_module.dart
  - todos os serviços que serão startados com o app.
  - todas as rotas que serão utilizadas

- contras: precisa de gerenciar as dependencias e co-dependencias via pubspec.yaml
- pros: projeto desacoplado e totalmente independente

## Versionamento de pacotes/apps

- atribuir um numero exclusivo a cada lançamento.
- rastrear o historico de mudanças

### Formatos de versionamento

- Major.Minor.Patch (Versòes de lançamento)
-> 5.2.2 > 6.2.2
-> --> 6.2.2 > 6.3.2
-> --> ---> 6.3.2 > 6.3.3

- alpha, beta, rc (Pré-lançamento)
-> 6.3.2-alpha.01
-> 6.3.2-beta.01
-> 6.3.2-rc.01
