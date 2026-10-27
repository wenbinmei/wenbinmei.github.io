#!/usr/bin/env bash
# Render social/card.html to the link-preview image (static/img/social-card.png, 1200x630).
set -euo pipefail
cd "$(dirname "$0")/.."
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
mkdir -p static/img
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --window-size=1200,630 \
  --screenshot=static/img/social-card.png "file://$PWD/social/card.html" 2>/dev/null
echo "Wrote static/img/social-card.png"
