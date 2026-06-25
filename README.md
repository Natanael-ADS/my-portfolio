# Natanael Cândido Silva — Portfólio

Portfólio profissional em Flutter Web.

**Live:** https://natanael-ads.github.io/my-portfolio/

## Seções

- Hero com apresentação
- Sobre
- Habilidades (Flutter, pagamentos, offline-first, Java/Spring)
- 3 projetos em destaque (Rock in Rio/ECXPay, MasterFoods, Player Contabilidade)
- Contato (e-mail, LinkedIn, GitHub)

## Rodar localmente

```bash
flutter pub get
flutter run -d chrome
```

## Build web

```bash
flutter build web --release --base-href "/my-portfolio/"
```

## Deploy (GitHub Pages)

O workflow `.github/workflows/deploy.yml` publica automaticamente no push para `main`.

**Configurar no GitHub:**
1. Settings → Pages → Source: **GitHub Actions**
2. Push para `main`

## Personalizar

Edite `lib/constants/app_constants.dart` para dados pessoais.
