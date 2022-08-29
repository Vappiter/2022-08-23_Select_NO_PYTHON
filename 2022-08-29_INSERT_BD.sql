/* Добавление  жанров*/
insert into genre(genre_name) values ('rok');
delete from genre where genre_name = 'rok';
insert into genre(genre_name) values ('rock');
insert into genre(genre_name) values ('punk rock');
insert into genre(genre_name) values ('jazz');
insert into genre(genre_name) values ('opera');
insert into genre(genre_name) values ('pop');

/* Добавление исполнителей */

insert into musician(musician_name, musician_nickname) values ('ДДТ', 'Шевчук');
insert into musician(musician_name, musician_nickname) values ('Король и шут', 'Горшок');
insert into musician(musician_name, musician_nickname) values ('Чайф', 'Екатеренбург');
insert into musician(musician_name, musician_nickname) values ('QUEEN', 'Freddie Mercury');
insert into musician(musician_name, musician_nickname) values ('Хор Турецкого', '12 мужчин');
insert into musician(musician_name, musician_nickname) values ('Arabesques', 'Sandra');
insert into musician(musician_name, musician_nickname) values ('Monserat Caballe', 'soprano');
insert into musician(musician_name, musician_nickname) values ('Игорь Бутман', 'Saxophone');

/* Добавление альбомов */ 

insert into album(album_name, album_year) values ('Родина', 1988);
insert into album(album_name, album_year) values ('Barcelona', 1991);
insert into album(album_name, album_year) values ('Сказки', 2013);
insert into album(album_name, album_year) values ('Оранжевое настроение', 1996);
insert into album(album_name, album_year) values ('Песни о Родине', 2018);
insert into album(album_name, album_year) values ('Воспоминание', 2018);
insert into album(album_name, album_year) values ('Old track', 2020);
insert into album(album_name, album_year) values ('Только джаз', 2022);

/* Добавление коллекций */

insert into collection (collection_name, collection_year) values ('СБОРНИК ХИТОВ 2022', 2022);
insert into collection (collection_name, collection_year) values ('СБОРНИК ХИТОВ 2018', 2018);
insert into collection (collection_name, collection_year) values ('Старые песни о главном', 2018);
insert into collection (collection_name, collection_year) values ('СБОРНИК ХИТОВ XX века', 2000);
insert into collection (collection_name, collection_year) values ('СБОРНИК ВСЕГО', 2022);