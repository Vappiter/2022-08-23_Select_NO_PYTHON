/* Добавление  жанров*/
INSERT INTO genre(genre_name) VALUES ('rok');
DELETE FROM genre WHERE genre_name = 'rok';
INSERT INTO genre(genre_name) VALUES ('rock');
INSERT INTO genre(genre_name) VALUES ('punk rock');
INSERT INTO genre(genre_name) VALUES ('jazz');
INSERT INTO genre(genre_name) VALUES ('opera');
INSERT INTO genre(genre_name) VALUES ('pop');

/* Добавление исполнителей */

INSERT INTO musician(musician_name, musician_nickname) VALUES ('ДДТ', 'Шевчук');
INSERT INTO musician(musician_name, musician_nickname) values ('Король и шут', 'Горшок');
INSERT INTO musician(musician_name, musician_nickname) values ('Чайф', 'Екатеренбург');
INSERT INTO musician(musician_name, musician_nickname) values ('QUEEN', 'Freddie Mercury');
INSERT INTO musician(musician_name, musician_nickname) values ('Хор Турецкого', '12 мужчин');
INSERT INTO musician(musician_name, musician_nickname) values ('Arabesques', 'Sandra');
INSERT INTO musician(musician_name, musician_nickname) values ('Monserat Caballe', 'soprano');
INSERT INTO musician(musician_name, musician_nickname) values ('Игорь Бутман', 'Saxophone');

/* Добавление альбомов */ 

INSERT INTO album(album_name, album_year) values ('Родина', 1988);
INSERT INTO album(album_name, album_year) values ('Barcelona', 1991);
INSERT INTO album(album_name, album_year) values ('Сказки', 2013);
INSERT INTO album(album_name, album_year) values ('Оранжевое настроение', 1996);
INSERT INTO album(album_name, album_year) values ('Песни о Родине', 2018);
INSERT INTO album(album_name, album_year) values ('Воспоминание', 2018);
INSERT INTO album(album_name, album_year) values ('Old track', 2020);
INSERT INTO album(album_name, album_year) values ('Только джаз', 2022);

/* Добавление коллекций */

INSERT INTO collection (collection_name, collection_year) values ('СБОРНИК ХИТОВ 2022', 2022);
INSERT INTO collection (collection_name, collection_year) values ('СБОРНИК ХИТОВ 2018', 2018);
INSERT INTO collection (collection_name, collection_year) values ('Старые песни о главном', 2018);
INSERT INTO collection (collection_name, collection_year) values ('СБОРНИК ХИТОВ XX века', 2000);
INSERT INTO collection (collection_name, collection_year) values ('СБОРНИК ВСЕГО', 2022);

/* Добавление треков */

WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Родина')
INSERT INTO track (album_id, track_name , track_time) VALUES ((SELECT * FROM al_id), 'Уехал я на РОДИНУ', 247), ((SELECT * FROM al_id), 'Осень', 257);
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Только джаз')
INSERT INTO track (album_id, track_name , track_time) VALUES ((SELECT * FROM al_id), 'Джаз и не только', 267),((SELECT * FROM al_id), 'Джаз', 167);
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Barcelona')
INSERT INTO track (album_id, track_name , track_time) VALUES ((SELECT * FROM al_id), 'Barcelona', 367),((SELECT * FROM al_id), 'SHOW MUST GO', 555);


