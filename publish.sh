#!/usr/bin/env bash
# الاستخدام: ./publish.sh [اسم-المستودع] [حساب-GitHub]
set -e
REPO="${1:-isnad}"; USER="${2:-hassan-shebani}"
git init -b main 2>/dev/null || true
git add -A && git commit -m "Isnad: rename platform, security/a11y fixes, OpenAlex key support" || true
if command -v gh >/dev/null; then
  gh repo create "$USER/$REPO" --public --source=. --push
else
  git remote add origin "https://github.com/$USER/$REPO.git" 2>/dev/null || true
  echo "أنشئ المستودع $USER/$REPO فارغًا على github.com ثم شغّل: git push -u origin main"
fi
echo "بعد الدفع: Settings → Pages → Source: GitHub Actions"
echo "الرابط المتوقع: https://$USER.github.io/$REPO/"
