#!/bin/sh
# Erzeugt alle Rechtstexte als PDF für ein Release: ./scripts/pdf.sh v2026.11.1
# Braucht pandoc und Google Chrome oder Chromium (Pfad über CHROME änderbar).
set -eu
cd "$(dirname "$0")/.."
fassung="$1"
chrome="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
repo=$(git remote get-url origin | sed -E 's#^(git@github.com:|https://github.com/)##; s#\.git$##')
out="build/$fassung"
mkdir -p "$out"
for f in agb.md */*.md; do
  [ -f "$f" ] || continue
  name=$(echo "${f%.md}" | tr '/' '-')
  pandoc "$f" -f gfm+yaml_metadata_block -t html5 --standalone --embed-resources \
    --css scripts/pdf.css --lua-filter scripts/fassung.lua \
    -M fassung="$fassung" -M quelle="https://github.com/$repo/blob/$fassung/$f" \
    -o "$out/$name.html"
  "$chrome" --headless --disable-gpu --no-pdf-header-footer \
    --print-to-pdf="$PWD/$out/$name-$fassung.pdf" "file://$PWD/$out/$name.html" 2>/dev/null
  rm "${out:?}/${name:?}.html"
done
ls "$out"
