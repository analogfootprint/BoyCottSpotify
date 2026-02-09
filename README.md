# Spotify Exporter

Export your Spotify Liked Songs (and saved albums / playlists) to Excel from a Jupyter notebook. Mac only.

## What you need

- **Mac**
- **Python 3** (check: open Terminal and run `python3 --version`)

## 1. Get Spotify credentials (one-time)

1. Go to [Spotify Developer Dashboard](https://developer.spotify.com/dashboard) and log in.
2. Click **Create app**. Name it anything (e.g. “My Exporter”), accept the terms.
3. Open your app → **Settings**.
4. Under **Redirect URIs** add: `http://127.0.0.1:9090/callback` → **Add** → **Save**.
5. Copy **Client ID** and **Client secret** (click **View client secret**)

## 2. Paste credentials in the notebook

1. Run the project (step 3 below) so the notebook opens in your browser.
2. In the notebook, find the **Login** cell (the one with `SPOTIPY_CLIENT_ID` and `SPOTIPY_CLIENT_SECRET`).
3. Replace the placeholder values with your **Client ID** and **Client secret**. Leave `SPOTIPY_REDIRECT_URI` as `http://127.0.0.1:9090/callback` unless you changed it in the Dashboard.
4. Save the notebook (Cmd+S).

## 3. Run the project

In Terminal:

```bash
cd /path/to/spotify_exporter_public
chmod +x setup_and_run.sh
./setup_and_run.sh
```

- The first run creates a `venv` folder and installs dependencies (may take a minute).
- Your browser will open with the notebook. Click **Run** → **Run All Cells**.
- When it finishes, the Excel file will appear in this folder.
- When you're done, stop Jupyter by pressing **Ctrl+C** in the terminal.

### Optional: keep only the exported Excel

To delete everything in this folder except the exported `.xlsx` file(s) (venv, notebook, scripts, etc.), in the same or a new terminal:

```bash
chmod +x cleanup.sh
./cleanup.sh
```

You'll be asked to confirm. After this you'll need to re-download the project to run the exporter again.

---

### If the script won’t run

```bash
chmod +x setup_and_run.sh
```

Then run `./setup_and_run.sh` again.

### Jupyter / kernel

You don’t need to install or register a kernel yourself. The script installs Jupyter and its kernel (ipykernel) inside the project’s `venv`. When you run the script, Jupyter uses that same environment to run the notebook, so everything works with one command.
