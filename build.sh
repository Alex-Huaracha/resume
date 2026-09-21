#!/usr/bin/env bash
set -euo pipefail

if command -v podman &> /dev/null; then
  ENGINE=podman
elif command -v docker &> /dev/null; then
  ENGINE=docker
else
  echo "Error: neither podman nor docker found in PATH." >&2
  exit 1
fi

"$ENGINE" build -t resume-latex .

for lang in es en; do
  "$ENGINE" run --rm -i -v "$PWD":/data resume-latex pdflatex "resume-${lang}.tex"
done
