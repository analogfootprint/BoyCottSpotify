#!/usr/bin/env bash
# Run from spotify_exporter_public folder. Uses only system Python.
# Creates venv, installs deps, launches Jupyter with the notebook.

set -e
cd "$(dirname "$0")"

VENV_DIR="venv"

if [[ ! -d "$VENV_DIR" ]]; then
  echo "Creating virtual environment in $VENV_DIR ..."
  python3 -m venv "$VENV_DIR" || python -m venv "$VENV_DIR"
fi

echo "Installing dependencies ..."
"$VENV_DIR/bin/pip" install --quiet --upgrade pip
"$VENV_DIR/bin/pip" install --quiet -r requirements.txt

echo "Launching Jupyter Notebook ..."
exec "$VENV_DIR/bin/jupyter" notebook SpotifyExporter.ipynb
