create table if not exists artist 
(
    id serial PRIMARY KEY ,
    name VARCHAR(60) not null
    );
insert into artist values (1,'Баста');
insert into artist values (2,'Лариса Долина'); 
insert into artist values (3,'Леонид Агутин');
insert into artist values (4,'Жанна Агузарова');
insert into artist values (5,'Дима Билан');
update artist 
set name = 'Дима Билан'
where id= 5;

create table if not exists genre 
(
    id serial PRIMARY KEY ,
    name VARCHAR(60) not null
    );
insert into genre values (1,'Рэп');
insert into genre values (2,'Поп музыка'); 
insert into genre values (3,'Джаз');
insert into genre values (4,'Рок музыка'); 
insert into genre values (5,'Шансон');



create table if not exists genre_artist
(
    genre_id INTEGER references genre(id),
    artist_id INTEGER references artist(id),
    constraint pk primary key (genre_id,artist_id)
   );
insert into genre_artist values (1,2);
insert into genre_artist values (2,3);
insert into genre_artist values (3,2);
insert into genre_artist values (4,1);
create table if not exists album 
(
    id serial PRIMARY KEY ,
    title VARCHAR(60) not null,
    year VARCHAR(60) not null
    );
insert into album values (1,'Все мы реперы','2024');
insert into album values (2,'Погода в доме','2019'); 
insert into album values (3,'Джаз и не только','2022');
insert into album values (4,'Поём все вместе','2021'); 
insert into album values (5,'Шансон надоел','2023';
   
create table if not exists album_artist
(
    album_id INTEGER references album(id),
    artist_id INTEGER references artist(id),
    constraint pk_1 primary key (album_id,artist_id)
    );
insert into album_artist values (1,5);
insert into album_artist values (2,1);
insert into album_artist values (2,4);
insert into album_artist values (3,2);

create table if not exists sbornik 
(
    id serial PRIMARY KEY ,
    name VARCHAR(60) not null,
    year VARCHAR(60) not null
    );
insert into sbornik values (1,'Сборник 1','2018');
insert into sbornik values (2,'Сборник 2','2019'); 
insert into sbornik values (3,'Сборник 3','2022');
insert into sbornik values (4,'Сборник 4','2021'); 
insert into sbornik values (5,'Сборник 5','2023');
   
create table if not exists song 
(
    id serial PRIMARY KEY ,
    name VARCHAR(60) not null,
    year VARCHAR(60) not null,
    album INTEGER not null,
    foreign key (album) references album(id)
    );
insert into song values (1,'Старый отель','1992',2,345);
insert into song values (2,'Сансара','2016',1,436); 
insert into song values (3,'В ресторане','2013',1,245);
insert into song values (4,'Замыкая круг','2020',5,465); 
insert into song values (5,'Колыма','2002',4,222);
insert into song values (6,'Босоногий мальчик','2021',1,340); 
insert into song values (7,'Желтые ботинки','1994',2,123);
ALTER TABLE song ADD COLUMN duration INTEGER;
ALTER TABLE song RENAME COLUMN duration TO duration_sec;
ALTER TABLE song DROP COLUMN duration;
update song 
set name = 'Мой босоногий мальчик'
where id= 5;

create table if not exists sbornik_song
(
    sbornik_id INTEGER references sbornik(id),
    song_id INTEGER references song(id),
    constraint pk_2 primary key (sbornik_id,song_id)
    );
insert into sbornik_song values (1,3); 
insert into sbornik_song values (2,5); 
insert into sbornik_song values (5,2);
insert into sbornik_song values (1,4);


