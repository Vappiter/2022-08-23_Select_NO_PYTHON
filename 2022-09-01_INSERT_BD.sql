/* Добавление  жанров*/

INSERT INTO genre(genre_name) VALUES ('rock');
INSERT INTO genre(genre_name) VALUES ('punk rock');
INSERT INTO genre(genre_name) VALUES ('jazz');
INSERT INTO genre(genre_name) VALUES ('opera');
INSERT INTO genre(genre_name) VALUES ('pop');

/* Добавление исполнителей */

INSERT INTO musician(musician_name, musician_nickname) VALUES ('ДДТ', 'Шевчук');
INSERT INTO musician(musician_name, musician_nickname) VALUES ('Король и шут', 'Горшок');
INSERT INTO musician(musician_name, musician_nickname) VALUES ('Чайф', 'Екатеринбург');
INSERT INTO musician(musician_name, musician_nickname) VALUES ('QUEEN', 'Freddie Mercury');
INSERT INTO musician(musician_name, musician_nickname) VALUES ('Хор Турецкого', '12 мужчин');
INSERT INTO musician(musician_name, musician_nickname) VALUES ('Arabesques', 'Sandra');
INSERT INTO musician(musician_name, musician_nickname) VALUES ('Monserat Caballe', 'Soprano');
INSERT INTO musician(musician_name, musician_nickname) VALUES ('Игорь Бутман', 'Saxophone');

/* Добавление альбомов */ 

INSERT INTO album(album_name, album_year) VALUES ('Родина', 1988);
INSERT INTO album(album_name, album_year) VALUES ('Barcelona', 1991);
INSERT INTO album(album_name, album_year) VALUES ('Сказки', 2013);
INSERT INTO album(album_name, album_year) VALUES ('Оранжевое настроение', 1996);
INSERT INTO album(album_name, album_year) VALUES ('Песни о Родине', 2018);
INSERT INTO album(album_name, album_year) VALUES ('Воспоминание', 2018);
INSERT INTO album(album_name, album_year) VALUES ('Old track', 2020);
INSERT INTO album(album_name, album_year) VALUES ('Только джаз', 2022);

/* Добавление сборников */

INSERT INTO collection (collection_name, collection_year) VALUES ('СБОРНИК ХИТОВ 2022', 2022);
INSERT INTO collection (collection_name, collection_year) VALUES ('СБОРНИК ХИТОВ 2018', 2018);
INSERT INTO collection (collection_name, collection_year) VALUES ('Старые песни о главном', 2018);
INSERT INTO collection (collection_name, collection_year) VALUES ('СБОРНИК ХИТОВ XX века', 2000);
INSERT INTO collection (collection_name, collection_year) values ('СБОРНИК ВСЕГО', 2022);
INSERT INTO collection (collection_name, collection_year) VALUES ('СБОРНИК ВСЕГО', 2021);
INSERT INTO collection (collection_name, collection_year) VALUES ('СБОРНИК ВСЕГО', 2020);
INSERT INTO collection (collection_name, collection_year) VALUES ('СБОРНИК ВСЕГО', 2019);

/* Добавление треков */

WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Родина')
INSERT INTO track (album_id, track_name , track_time) VALUES ((SELECT * FROM al_id), 'Уехал я на РОДИНУ', 247), ((SELECT * FROM al_id), 'Осень', 257);
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Только джаз')
INSERT INTO track (album_id, track_name , track_time) VALUES ((SELECT * FROM al_id), 'Джаз и не только', 267),((SELECT * FROM al_id), 'Джаз', 167);
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Barcelona')
INSERT INTO track (album_id, track_name , track_time) VALUES ((SELECT * FROM al_id), 'Barcelona', 367),((SELECT * FROM al_id), 'SHOW MUST GO', 555);
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Сказки')
INSERT INTO track (album_id, track_name , track_time) VALUES ((SELECT * FROM al_id), 'Кукла колдуна', 637),((SELECT * FROM al_id), 'Хозяин леса', 432),((SELECT * FROM al_id), 'Проклятый старый дом', 345);
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Песни о Родине')
INSERT INTO track (album_id, track_name , track_time) VALUES ((SELECT * FROM al_id), 'Моя Родина', 367),((SELECT * FROM al_id), 'Туки-туки', 355);
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Оранжевое настроение')
INSERT INTO track (album_id, track_name , track_time) VALUES ((SELECT * FROM al_id), '17 лет', 468),((SELECT * FROM al_id), 'Не спеши', 888), ((SELECT * FROM al_id), 'Оранжевое настроение', 945);
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Old track')
INSERT INTO track (album_id, track_name , track_time) VALUES ((SELECT * FROM al_id), 'Midnight Dancer', 367),((SELECT * FROM al_id), 'Zanzibar', 555);
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Воспоминание')
INSERT INTO track (album_id, track_name , track_time) VALUES ((SELECT * FROM al_id), 'Владимирский централ', 367),((SELECT * FROM al_id), 'Конь', 555);

/* Добавление связи между исполнителями и альбомами */

WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Родина'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'ДДТ')
INSERT INTO mus_alb (musician_id, album_id) VALUES ((SELECT * FROM mus_id),(SELECT * FROM al_id));
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Barcelona'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'QUEEN')
INSERT INTO mus_alb (musician_id, album_id) VALUES ((SELECT * FROM mus_id),(SELECT * FROM al_id));
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Barcelona'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Monserat Caballe')
INSERT INTO mus_alb (musician_id, album_id) VALUES ((SELECT * FROM mus_id),(SELECT * FROM al_id));
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Сказки'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Король и шут')
INSERT INTO mus_alb (musician_id, album_id) VALUES ((SELECT * FROM mus_id),(SELECT * FROM al_id));
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Оранжевое настроение'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Чайф')
INSERT INTO mus_alb (musician_id, album_id) VALUES ((SELECT * FROM mus_id),(SELECT * FROM al_id));
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Воспоминание'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Хор Турецкого')
INSERT INTO mus_alb (musician_id, album_id) VALUES ((SELECT * FROM mus_id),(SELECT * FROM al_id));
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Old track'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Arabesques')
INSERT INTO mus_alb (musician_id, album_id) VALUES ((SELECT * FROM mus_id),(SELECT * FROM al_id));
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Только джаз'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Игорь Бутман')
INSERT INTO mus_alb (musician_id, album_id) VALUES ((SELECT * FROM mus_id),(SELECT * FROM al_id));
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Песни о Родине'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Игорь Бутман')
INSERT INTO mus_alb (musician_id, album_id) VALUES ((SELECT * FROM mus_id),(SELECT * FROM al_id));
WITH al_id AS (SELECT album_id FROM album WHERE album_name = 'Песни о Родине'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Хор Турецкого')
INSERT INTO mus_alb (musician_id, album_id) VALUES ((SELECT * FROM mus_id),(SELECT * FROM al_id));

/* Добавление связи между испольнителями и жанрами */

WITH ge_id AS (SELECT genre_id FROM genre WHERE genre_name = 'rock'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'ДДТ')
INSERT INTO ge_mus (genre_id, musician_id) VALUES ((SELECT * FROM ge_id),(SELECT * FROM mus_id));
WITH ge_id AS (SELECT genre_id FROM genre WHERE genre_name = 'rock'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Чайф')
INSERT INTO ge_mus (genre_id, musician_id) VALUES ((SELECT * FROM ge_id),(SELECT * FROM mus_id));
WITH ge_id AS (SELECT genre_id FROM genre WHERE genre_name = 'punk rock'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Король и шут')
INSERT INTO ge_mus (genre_id, musician_id) VALUES ((SELECT * FROM ge_id),(SELECT * FROM mus_id));
WITH ge_id AS (SELECT genre_id FROM genre WHERE genre_name = 'jazz'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Игорь Бутман')
INSERT INTO ge_mus (genre_id, musician_id) VALUES ((SELECT * FROM ge_id),(SELECT * FROM mus_id));
WITH ge_id AS (SELECT genre_id FROM genre WHERE genre_name = 'opera'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Monserat Caballe')
INSERT INTO ge_mus (genre_id, musician_id) VALUES ((SELECT * FROM ge_id),(SELECT * FROM mus_id));
WITH ge_id AS (SELECT genre_id FROM genre WHERE genre_name = 'pop'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Arabesques')
INSERT INTO ge_mus (genre_id, musician_id) VALUES ((SELECT * FROM ge_id),(SELECT * FROM mus_id));
WITH ge_id AS (SELECT genre_id FROM genre WHERE genre_name = 'opera'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'QUEEN')
INSERT INTO ge_mus (genre_id, musician_id) VALUES ((SELECT * FROM ge_id),(SELECT * FROM mus_id));
WITH ge_id AS (SELECT genre_id FROM genre WHERE genre_name = 'rock'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'QUEEN')
INSERT INTO ge_mus (genre_id, musician_id) VALUES ((SELECT * FROM ge_id),(SELECT * FROM mus_id));
WITH ge_id AS (SELECT genre_id FROM genre WHERE genre_name = 'pop'), mus_id AS (SELECT musician_id FROM musician WHERE musician_name = 'Хор Турецкого')
INSERT INTO ge_mus (genre_id, musician_id) VALUES ((SELECT * FROM ge_id),(SELECT * FROM mus_id));

/* Добавление свзяи между сборниками и треками */

/* SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ХИТОВ 2022' AND collection_year = 2019
SELECT track_id FROM track WHERE track_name = 'Владимирский централ'
SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ВСЕГО'AND collection_year = 2019 */


WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ХИТОВ 2022' AND collection_year = 2022), tr_id AS (SELECT track_id FROM track WHERE track_name = 'Владимирский централ')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));
WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ХИТОВ 2022' AND collection_year = 2022), tr_id AS (SELECT track_id FROM track WHERE track_name = 'Конь')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));
WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ВСЕГО' AND collection_year = 2022), tr_id AS (SELECT track_id FROM track WHERE track_name = 'Barcelona')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));
WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ВСЕГО' AND collection_year = 2022), tr_id AS (SELECT track_id FROM track WHERE track_name = 'Хозяин леса')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));
WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ВСЕГО' AND collection_year = 2021), tr_id AS (SELECT track_id FROM track WHERE track_name = 'Zanzibar')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));
WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ВСЕГО' AND collection_year = 2021), tr_id AS (SELECT track_id FROM track WHERE track_name = 'Моя Родина')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));
WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ВСЕГО' AND collection_year = 2020), tr_id AS (SELECT track_id FROM track WHERE track_name = 'Проклятый старый дом')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));
WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ВСЕГО' AND collection_year = 2020), tr_id AS (SELECT track_id FROM track WHERE track_name = 'Конь')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));
WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ВСЕГО' AND collection_year = 2019), tr_id AS (SELECT track_id FROM track WHERE track_name = '17 лет')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));
WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ВСЕГО' AND collection_year = 2019), tr_id AS (SELECT track_id FROM track WHERE track_name = 'SHOW MUST GO')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));
WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ХИТОВ XX века' AND collection_year = 2020), tr_id AS (SELECT track_id FROM track WHERE track_name = 'SHOW MUST GO')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));
WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'СБОРНИК ХИТОВ XX века' AND collection_year = 2020), tr_id AS (SELECT track_id FROM track WHERE track_name = 'Туки-туки')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));
WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'Старые песни о главном' AND collection_year = 2018), tr_id AS (SELECT track_id FROM track WHERE track_name = 'Midnight Dancer')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));
WITH col_id AS (SELECT collection_id FROM collection WHERE collection_name = 'Старые песни о главном' AND collection_year = 2018), tr_id AS (SELECT track_id FROM track WHERE track_name = 'Zanzibar')
INSERT INTO col_tr (collection_id, track_id) VALUES ((SELECT * FROM col_id),(SELECT * FROM tr_id));



