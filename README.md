# 🧱 Flutter Arch — Clean Architecture com Flutter

Repositório com a implementação prática da **Clean Architecture no Flutter**, desenvolvida durante o curso do canal **Deivid Willyan** no YouTube.

🎓 **Playlist do curso:**
[https://youtube.com/playlist?list=PLRpTFz5_57cvCYRhHUui2Bis-5Ybh78TS](https://youtube.com/playlist?list=PLRpTFz5_57cvCYRhHUui2Bis-5Ybh78TS)

📦 **Repositório:**
[https://github.com/heitorhidalgo/flutter-arch](https://github.com/heitorhidalgo/flutter-arch)

> ✅ Projeto desenvolvido até a **Aula 09**, acompanhando os commits públicos do repositório.

---

## 📚 Conteúdo Estudado (até a Aula 09)

| Aula | Tema |
|------|------|
| 01 | Introdução à Clean Architecture |
| 02 | DOMAIN |
| 03 | Introdução a Testes no Domain |
| 04 | DTO Pattern e Data Layer |
| 05 | TDD na Prática |
| 06 | Datasource Layer |
| 07 | Presentation Layer |
| 08 | Boas Práticas e Revisão |
| 09 | Aula Final |

---

## 🏗️ Estrutura do Projeto

```
lib
├── core
│   └── inject
└── layers
    ├── data
    │   ├── datasources
    │   │   └── local
    │   ├── dtos
    │   └── repositories
    ├── domain
    │   ├── entities
    │   ├── repositories
    │   └── usecases
    │       ├── get_carros_por_cor
    │       └── salvar_carro_favorito
    └── presentation
        ├── controllers
        └── ui
            └── pages
```

---

## 🧠 Conceitos Aplicados

### 🔹 Clean Architecture

Separação clara de responsabilidades em camadas independentes:

- **Domain** → Regras de negócio puras
- **Data** → Implementações concretas (DTOs, Datasources, Repositories)
- **Presentation** → Controllers e UI
- **Core** → Injeção de dependências

### 🔹 Domain Layer

Contém:

- **Entities** → Representação pura do domínio
- **Repositories (contracts)** → Interfaces
- **UseCases** → Regras de negócio isoladas

UseCases implementados:

- `GetCarrosPorCor`
- `SalvarCarroFavorito`

### 🔹 Data Layer

Responsável por:

- DTOs (conversão entre entidade e Map/JSON)
- Datasources locais
- Implementação concreta dos repositórios

Aplicando:

- Dependency Inversion Principle
- Conversão entre DTO ↔ Entity
- Separação entre contrato e implementação

### 🔹 Presentation Layer

- Controllers
- Comunicação com UseCases
- Gerenciamento de estado simples
- Organização de páginas

### 🔹 Injeção de Dependências

Localizada em `core/inject`, responsável por montar o grafo de dependências da aplicação, respeitando a inversão de dependência da Clean Architecture.

---

## 🚀 Objetivo do Projeto

- Aprender Clean Architecture aplicada ao Flutter
- Entender separação real de camadas
- Aplicar SOLID na prática
- Evoluir organização de projetos para nível profissional

---

## 🛠️ Tecnologias Utilizadas

- [Flutter](https://flutter.dev)
- [Dart](https://dart.dev)
- Clean Architecture
- Princípios SOLID
- Dependency Injection manual

---

## ▶️ Como Executar

1. Certifique-se de ter o Flutter instalado:
   [https://docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install)

2. Clone o repositório:

```bash
git clone https://github.com/heitorhidalgo/flutter-arch.git
```

3. Acesse a pasta:

```bash
cd flutter-arch
```

4. Instale as dependências:

```bash
flutter pub get
```

5. Execute o projeto:

```bash
flutter run
```

---

## 📌 Próximos Passos

- [ ] Integração com API remota
- [ ] Tratamento de Exceptions
- [ ] Refatoração para testes
- [ ] Evolução da camada Presentation
- [ ] Testes unitários por camada

---

## 👨‍💻 Autor

Desenvolvido por **Heitor Hidalgo** durante os estudos de arquitetura de software com Flutter.

---
