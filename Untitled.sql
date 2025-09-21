CREATE TABLE `Artists` (
  `artist_id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100),
  `country` varchar(50)
);

CREATE TABLE `Albums` (
  `album_id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(100),
  `release_year` int,
  `artist_id` int
);

CREATE TABLE `Songs` (
  `song_id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(100),
  `duration` time,
  `album_id` int,
  `artist_id` int
);

CREATE TABLE `Playlists` (
  `playlist_id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100),
  `created_at` timestamp
);

CREATE TABLE `PlaylistSongs` (
  `playlist_id` int,
  `song_id` int,
  PRIMARY KEY (`playlist_id`, `song_id`)
);

ALTER TABLE `Albums` ADD FOREIGN KEY (`artist_id`) REFERENCES `Artists` (`artist_id`);

ALTER TABLE `Songs` ADD FOREIGN KEY (`album_id`) REFERENCES `Albums` (`album_id`);

ALTER TABLE `Songs` ADD FOREIGN KEY (`artist_id`) REFERENCES `Artists` (`artist_id`);

ALTER TABLE `PlaylistSongs` ADD FOREIGN KEY (`playlist_id`) REFERENCES `Playlists` (`playlist_id`);

ALTER TABLE `PlaylistSongs` ADD FOREIGN KEY (`song_id`) REFERENCES `Songs` (`song_id`);
