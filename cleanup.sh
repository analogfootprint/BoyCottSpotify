#!/usr/bin/env bash
# Optional: remove everything in this folder except the exported Excel file(s).
# You will need to re-download or re-copy the project to run the exporter again.

set -e
cd "$(dirname "$0")"

echo "This will delete everything here except .xlsx (Excel) files."
echo "You will need to re-download the project to run the exporter again."
read -p "Continue? [y/N] " -n 1 -r
echo
if [[ ! "$REPLY" =~ ^[yY]$ ]]; then
  echo "Cancelled."
  exit 0
fi

rm -rf venv .venv .ipynb_checkpoints .cache .DS_Store
rm -f SpotifyExporter.ipynb setup_and_run.sh requirements.txt README.md .gitignore

# Remove this script last (it's still running)
rm -f cleanup.sh

echo "Done. Only .xlsx file(s) left in this folder."
