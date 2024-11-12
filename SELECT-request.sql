 -- ЗАДАНИЕ 2
 -- / Название и продолжительность самого длинного трека.
SELECT name, duration FROM tracks
WHERE duration = (SELECT max(duration) FROM tracks);

 -- / Название треков, продолжительнось которых больше 3,5 минут.
SELECT name, duration FROM tracks
WHERE duration > 3.5;

 -- / Название сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name FROM collections
WHERE release_date >= '2018.01.01' AND release_date <= '2020.01.01';

 -- / Исполнители, чье имя состоит из одного слова
SELECT artists_name FROM artists
WHERE NOT artists_name LIKE '% %';

 -- / Название треков, которые содержат слово "мой" или "my"
SELECT name FROM tracks
WHERE name like '%мой%' OR name LIKE '%my%';

 -- ЗАДАНИЕ 3
 -- /Количество исполнителей в каждом жанре
SELECT genres_name, COUNT(a.artists_name) FROM genres g
LEFT JOIN artistsgenres a2 on g.id = a2.genres_id
LEFT JOIN artists a on a2.artists_id = a.id
GROUP BY genres_name
ORDER BY count(a.artists_name) DESC;
 
 -- /Количество треков, вошедших в альбомы 2019-220 годов.
SELECT COUNT(track_name) FROM tracks t
LEFT JOIN albums a ON t.albums_id = a.id
WHERE release_date > '2019.01.01' AND release_date < '2021.01.01';

 -- /Средняя продолжите_ность треков по каждому Альбому.
SELECT a.albums_name, avg(duration) FROM tracks t
LEFT JOIN albums a ON t.albums_id = a.id
GROUP BY albums_name
ORDER BY avg(duration);

 -- / Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT artists_name FROM artists a
LEFT JOIN artistsalbums a2 ON a.id = a2.artists_id
LEFT JOIN albums a3 ON a2.albums_id = a3.id
WHERE artists_name IN (SELECT artists_name FROM artistsalbums where release_date >= '2020.01.01' AND release_date < '2021.01.01');

-- / Название сборников, в которых присутствует конкретный исполнитель
SELECT collections_name FROM collections c
LEFT JOIN trackscollections t ON t.collections_id = c.id
LEFT JOIN tracks t2 ON t.tracks_id = t2.id
LEFT JOIN tracks t2 ON t2.albums_id = a.id
LEFT JOIN artistsalbums a2 ON a a.id = a2.albums_id
LEFT JOIN artists a3 ON a2.artists_id = a3.id
WHERE artists_name like 'S%';