# Guia — Preencher projetos e links das lojas

Edite o arquivo **`lib/data/projects_data.dart`** ou preencha esta tabela e depois copie para o código.

## Como escrever a descrição

Use este modelo mental:

| Campo | O que escrever | Exemplo |
|-------|----------------|---------|
| **title** | Nome do app | `Rock in Rio` |
| **company** | Empresa onde você trabalhou | `Jera` |
| **period** | Quando atuou | `2023 – 2025` |
| **category** | Segmento + tipo | `Eventos · Alto tráfego` |
| **description** | 1–2 frases: o que é o app | `App oficial do festival em Flutter...` |
| **contributions** | Lista do que **VOCÊ** fez (não o time genérico) | `Integração PIX`, `Code review` |
| **playStoreUrl** | Link da Play Store | `https://play.google.com/store/apps/details?id=...` |
| **appStoreUrl** | Link da App Store | `https://apps.apple.com/br/app/...` |

### Frases úteis para `contributions`

Copie e adapte:

- Desenvolvimento de features em Flutter a partir de layouts Figma
- Integração com APIs REST e tratamento de erros
- Refatoração de código legado para Clean Architecture / MVVM
- Implementação de fluxo offline-first com sincronização
- Integração de pagamentos (Stone / PagBank / PIX)
- Tratamento de callbacks, deep links e UX de erro em pagamentos
- Publicação e acompanhamento de builds na Play Store e App Store
- Correções críticas e suporte em produção durante picos de uso
- Code review e mentoria de desenvolvedores juniores
- Configuração e melhoria de CI/CD (Bitrise)
- Implementação de push notifications
- Migração Android nativo → Flutter
- Desenvolvimento de módulo Android com Firebase

---

## Tabela para você preencher

Marque ✅ quando colar o link da loja.

### Jera

| App | Play Store | App Store | O que você fez (revise) |
|-----|------------|-----------|-------------------------|
| Rock in Rio | | | Manutenção em produção no evento, correções em pico |
| ECXPay | | | Refatoração, PIX, onboarding, extrato, notificações |
| Orbit | | | Entrega em ~3 meses, features principais |
| Zélia | | | Primeiro Flutter na Jera, Figma, MVVM, Scrum |
| _(outro?)_ | | | |

### i3 Sistemas

| App | Play Store | App Store | O que você fez |
|-----|------------|-----------|----------------|
| MasterFoods Comanda | | | Stone, PagBank, UX de pagamento |

### Sistema Quantum

| App | Play Store | App Store | O que você fez |
|-----|------------|-----------|----------------|
| Força de Vendas | | | Offline-first, sync, Spring Boot |
| Comanda / Estoque | | | Módulos corporativos Android |
| Quantum Ajuda | | | Tutoriais Firebase Storage |
| Apps Flutter (atual) | | | Features, code review, produção |
| _(nome do app?)_ | | | |

### Outros

| App | Empresa | GitHub/Web | O que você fez |
|-----|---------|------------|----------------|
| Registro de Ponto | Player | já no GitHub | Full-stack teste técnico |
| _(outro?)_ | | | |

---

## Onde colar os links no código

Abra `lib/data/projects_data.dart` e substitua as linhas vazias:

```dart
playStoreUrl: 'https://play.google.com/store/apps/details?id=SEU_PACOTE',
appStoreUrl: 'https://apps.apple.com/br/app/idSEU_ID',
```

**Dica:** busque o app no Google pelo nome + "Play Store" ou peça o link ao time/PO.

---

## Adicionar um app novo

Copie o template no final de `projects_data.dart`:

```dart
Project(
  title: 'Nome do App',
  company: 'Empresa',
  period: '2024 – 2025',
  category: 'Segmento',
  description: 'O que é o app em 1 frase.',
  contributions: [
    'O que você implementou',
    'Outra entrega sua',
  ],
  technologies: ['Flutter', 'Dart'],
  playStoreUrl: 'https://play.google.com/...',
  appStoreUrl: '',
),
```

---

## Depois de preencher

Republicar o site:

```bash
bash scripts/deploy-gh-pages.sh
```

Ou no Windows (Git Bash):

```bash
cd C:/Users/natan/career-positioning/my-portfolio
MSYS2_ARG_CONV_EXCL="*" flutter build web --release --base-href=/my-portfolio/
# depois push da pasta build/web para gh-pages
```
