/* Альбомы вышедшие в 2018 */

SELECT album_name, album_year FROM album WHERE album_year = 2018;

/* Название и продолжительность самого длинного трека */ 

SELECT track_name, track_time FROM track WHERE track_time = (SELECT max(track_time) FROM track);

/* Названия треков длиной более 3.5 минут  */

SELECT track_name FROM track WHERE track_time >= 210; 

/* Названия сборников вышедших с 2018 по 2020 включительно */

SELECT collection_name FROM collection WHERE collection_year >= 2018 AND collection_year <= 2020;

SELECT collection_name FROM collection WHERE collection_year BETWEEN 2018 AND 2020;

/* Исполнители из одного слова*/

SELECT musician_name FROM musician WHERE musician_name NOT LIKE '% %'; 

/* Названия треков содержащих слово "My/Мой" */

SELECT track_name FROM track WHERE track_name LIKE '%Моя%'; 