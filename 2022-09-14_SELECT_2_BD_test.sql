/* Количество исполнителей в каждом жанре */

SELECT gm.genre_id, g.genre_name, COUNT (gm.genre_id) FROM ge_mus gm
JOIN genre g ON gm.genre_id = g.genre_id 
GROUP BY g.genre_name, gm.genre_id 
ORDER BY COUNT (gm.genre_id);

/* Количество треков, вошедших в альбомы 2019-2020 годов */ 

SELECT a.album_name, a.album_year, COUNT (t.track_id) FROM album a 
JOIN track t ON a.album_id = t.album_id
WHERE album_year BETWEEN 2018 AND 2020
GROUP BY a.album_name, a.album_year;

/* Cредняя продолжительность треков по каждому альбому  */

SELECT a.album_name, a.album_year, AVG (t.track_time) FROM album a 
JOIN track t ON a.album_id = t.album_id
GROUP BY a.album_name, a.album_year; 

/* Все исполнители, которые не выпустили альбомы в 2020 году */

SELECT DISTINCT m.musician_name FROM musician m 
JOIN mus_alb ma ON m.musician_id = ma.musician_id 
JOIN album a ON ma.album_id = a.album_id
WHERE album_year != 2020
ORDER BY m.musician_name;

SELECT DISTINCT m.musician_name FROM musician m 
	WHERE m.musician_name NOT IN (
		SELECT DISTINCT m.musician_name FROM musician m 
		LEFT JOIN mus_alb ma ON m.musician_id = ma.musician_id
		LEFT JOIN album al ON ma.album_id = al.album_id 
		WHERE al.album_year = 2020
		)
	ORDER BY m.musician_name;

/* Названия сборников, в которых присутствует конкретный исполнитель (выберите сами)*/

SELECT DISTINCT collection_name, collection_year FROM collection c 
JOIN col_tr ct ON c.collection_id = ct.collection_id 
JOIN track t ON t.track_id = ct.track_id 
JOIN album a ON a.album_id = t.album_id 
JOIN mus_alb ma ON a.album_id = ma.album_id 
JOIN musician m ON m.musician_id = ma.musician_id 
WHERE m.musician_name = 'Хор Турецкого';

/* Название альбомов, в которых присутствуют исполнители более 1 жанра */

SELECT a.album_name, m.musician_name FROM album a 
FULL JOIN mus_alb ma ON a.album_id = ma.album_id 
FULL JOIN musician m ON ma.musician_id = m.musician_id 
FULL JOIN ge_mus gm ON gm.musician_id = m.musician_id 
GROUP BY a.album_name, m.musician_name
HAVING COUNT (gm.musician_id) > 1;

/* Наименование треков, которые не входят в сборники */

SELECT t.track_name, ct.track_id FROM track t
FULL JOIN col_tr ct ON t.track_id = ct.track_id 
GROUP BY t.track_name, ct.track_id  
HAVING ct.track_id IS NULL ;

/* Исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько) */

SELECT m.musician_name, MIN (t.track_time)  FROM track t  
JOIN album a ON t.album_id = a.album_id 
JOIN mus_alb ma ON a.album_id = ma.album_id 
JOIN musician m ON ma.musician_id =m.musician_id 
WHERE t.track_time = (SELECT MIN (t.track_time)  FROM track t)
GROUP BY musician_name;

/* Название альбомов, содержащих наименьшее количество треков */

SELECT a.album_name, COUNT_TRACK FROM (SELECT t.album_id, COUNT(t.album_id) COUNT_TRACK FROM track t GROUP BY t.album_id) tt2
JOIN album a ON a.album_id = tt2.album_id 
GROUP BY a.album_name, tt2.COUNT_TRACK
HAVING COUNT_TRACK = (SELECT MIN(mycount) FROM (SELECT album_id, count(album_id) mycount FROM track GROUP BY album_id) AS MYMIN);

