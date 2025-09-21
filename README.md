# 🎵 Music Playlist Database Project

This project demonstrates the design and implementation of a Music Playlist Management System using MySQL. It showcases database design, data modeling, normalization, and SQL querying—skills highly relevant for data analyst and business analyst roles.

## 📌 Project Overview
The Music Playlist Database manages songs, albums, artists, and playlists in an organized and scalable manner. It reflects a real-world use case of how streaming platforms like Spotify or Apple Music structure their data.

**Schema Overview:**
- **Artists** → stores details of music creators.
- **Albums** → collections of songs released by artists.
- **Songs** → individual tracks, linked to albums and artists.
- **Playlists** → user-created collections of songs.
- **PlaylistSongs** → many-to-many relationship between playlists and songs.

This enables queries such as:
- Fetching all songs in a playlist with their artists.
- Viewing an artist’s discography.
- Finding playlists containing a specific song.

## 🛠️ Tech Stack
- **Database:** MySQL  
- **Design Tool:** MySQL Workbench + ER Diagram  
- **Languages Used:** SQL (DDL & DML)  

## 📂 Repository Contents
- `schema.sql` → SQL script to create schema, tables, sample data, and queries.  
- `er_diagram.svg` → Entity-Relationship Diagram of the schema.  
- `README.md` → Project documentation.  
- `LICENSE` → MIT License.  
- `.gitignore` → Standard ignore rules.  

## 📊 Entity-Relationship Diagram (ERD)
The ERD illustrates relationships between artists, albums, songs, and playlists.  
*Tip:* Replace `er_diagram.svg` with a high-resolution, colored PNG for a more polished resume-ready look.

## 📝 Sample Query & Output
**SQL Query:**
```sql
SELECT p.name AS Playlist, s.title AS Song, a.name AS Artist
FROM Playlists p
JOIN PlaylistSongs ps ON p.playlist_id = ps.playlist_id
JOIN Songs s ON ps.song_id = s.song_id
JOIN Artists a ON s.artist_id = a.artist_id;
