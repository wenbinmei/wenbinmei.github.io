#!/usr/bin/env bash
# Render cv/cv.html to the PDF linked from the site (static/uploads/wenbin-mei-cv.pdf).
set -euo pipefail
cd "$(dirname "$0")/.."
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
mkdir -p static/uploads
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer \
  --print-to-pdf=static/uploads/wenbin-mei-cv.pdf "file://$PWD/cv/cv.html"
echo "Wrote static/uploads/wenbin-mei-cv.pdf"
