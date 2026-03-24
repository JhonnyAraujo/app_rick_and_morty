# 📱 App Rick and Morty

> Aplicativo consiste em mostrar os personagens e suas caracteristicas do desenho Ricky and Morty.

[![Flutter Version](https://img.shields.io/badge/Flutter-v3.41.4-blue.svg)](https://flutter.dev/)
[![Dart Version](https://img.shields.io/badge/Dart-v3.11.1-blue.svg)](https://dart.dev/)

---

## 📸 Demonstração Visual

<p align="center">
  <img src="link-da-imagem-1" width="200" alt="Tela Inicial">
  <img src="link-da-imagem-2" width="200" alt="Tela de Detalhes">
</p>

## 📱 Mapeamento de Telas

- **Home:** Dashboard principal com o resumo dos dados e navegação para os módulos.

## ✨ Funcionalidades

## ✨ Funcionalidades

- **Visualização Flexível:** A página inicial permite alternar dinamicamente entre o layout em Lista (padrão) e em Grade (Grid).
- **Busca e Filtro Local:** Campo de pesquisa na tela inicial que filtra instantaneamente os personagens já carregados, permitindo buscas tanto pelo Nome quanto pelo ID.
- **Detalhes do Personagem:** Navegação para uma tela dedicada com informações completas ao tocar em qualquer personagem da lista.
- **Paginação Inteligente (Infinite Scroll):** Consumo da API sob demanda. O app carrega os dados de 20 em 20, buscando novos personagens automaticamente apenas quando o usuário chega ao final da rolagem.
- **UI Adaptativa (Cores Dinâmicas):** O fundo dos cards (tanto na lista quanto na grade) muda automaticamente para combinar com a cor predominante da imagem de cada personagem.

## 🛠️ Tecnologias e Arquitetura

Este projeto foi desenvolvido com as seguintes tecnologias e práticas:

- **Linguagem:** [Dart](https://dart.dev/)
- **Framework:** [Flutter](https://flutter.dev/)
- **Gerenciamento de Estado:** [Mobx](https://pub.dev/packages/mobx)
- **Consumo de API:** [Dio](https://pub.dev/packages/dio)
- **Arquitetura:** (ex: Clean Architecture, MVC, MVVM)

## 🚀 Como Executar o Projeto

### Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:

- [Git](https://git-scm.com)
- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Um emulador (Android/iOS) ou um dispositivo físico configurado.

### Passos para rodar:

1. Clone este repositório:

```bash
git clone [https://github.com/seu-usuario/nome-do-projeto.git](https://github.com/seu-usuario/nome-do-projeto.git)
```
