create table if not exists genre (
     genre_id serial primary key,
     genre_name text not null, 
     unique (genre_name)
);

create table if not exists musician (
     musician_id serial primary key,
     musician_name text not null,
     musician_nickname text
);

create table if not exists album (
     album_id serial primary key,
     album_name text not null,
     album_year integer check (album_year > 1970 and album_year < 2022)
);

create table if not exists track (
     track_id serial primary key,
     album_id integer references album (album_id),
     track_name text not null,
     track_time integer check (track_time > 0 and track_time < 1200)
);

create table if not exists collection (
     collection_id serial primary key,
     collection_name text not null,
     collection_year integer check (collection_year > 1970 and collection_year < 2022)
);

create table if not exists ge_mus (
     genre_id integer references genre (genre_id),
     musician_id integer references musician (musician_id),
     constraint ge_mus_id primary key (genre_id, musician_id) 
);

create table if not exists mus_alb (
     musician_id integer references musician (musician_id),
     album_id integer references album (album_id),
     constraint mus_alb_id primary key (musician_id, album_id)
);

create table if not exists col_tr (
     collection_id integer references collection (collection_id),
     track_id integer references track (track_id),
     alb_tr_id integer primary key
);


