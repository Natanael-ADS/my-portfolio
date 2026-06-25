#!/usr/bin/env bash
# Publica o portfólio na branch gh-pages do GitHub Pages.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

flutter pub get
MSYS2_ARG_CONV_EXCL="*" flutter build web --release --base-href=/my-portfolio/

cd build/web
touch .nojekyll

if [ ! -d .git ]; then
  git init
  git remote add origin https://github.com/Natanael-ADS/my-portfolio.git
fi

git checkout -B gh-pages
git add -A
git commit -m "deploy: portfolio web $(date +%Y-%m-%d)" || true
git push -f origin gh-pages

echo "Deploy enviado. URL: https://natanael-ads.github.io/my-portfolio/"
echo "Se 404: GitHub → Settings → Pages → Branch gh-pages / root"
