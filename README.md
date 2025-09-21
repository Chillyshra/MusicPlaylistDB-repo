# MusicPlaylistDB-repo

This repository contains the **Music Playlist** database project (MySQL). It includes:

- `schema.sql` - SQL DDL/DML to create the database, tables, sample data, and sample query.
- `er_diagram.svg` - ER diagram (vector image) for resume/project usage.
- `LICENSE` - MIT License.
- `.gitignore` - Recommended gitignore for SQL projects.

## How to use locally

1. Install MySQL and MySQL Workbench (or use a Docker MySQL image).
2. Run the SQL script in `schema.sql` to create the database and sample data:
```bash
mysql -u your_user -p < schema.sql
```

Or in MySQL Workbench: File → Run SQL Script → choose `schema.sql`.

## To publish to GitHub (quick steps)

From a terminal (after installing git):

```bash
cd path/to/this/folder
git init
git add .
git commit -m "Initial commit: MusicPlaylistDB schema and ER diagram"
# Create repo on GitHub via web UI or use gh CLI:
# gh repo create your-username/MusicPlaylistDB-repo --public --source=. --remote=origin --push
git remote add origin https://github.com/<your-username>/MusicPlaylistDB-repo.git
git branch -M main
git push -u origin main
```

