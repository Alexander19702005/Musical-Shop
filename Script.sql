create table if not exists artist 
(
    id_a serial PRIMARY KEY ,
    name VARCHAR(60) not null
    );
insert into artist values (1,'Баста');
insert into artist values (2,'Лариса Долина'); 
insert into artist values (3,'Леонид Агутин');
insert into artist values (4,'Жанна Агузарова');
insert into artist values (5,'Дима Билан');
insert into artist values (6,'Enigma');
insert into artist values (7,'Qween');
insert into artist values (8,'Монеточка');
insert into artist values (9,'Beatles');
insert into artist values (10,'Секрет');
insert into artist values (11,'Алла Пугачева');
insert into artist values (12,'Selin Dion');

create table if not exists genre 
(
    id_g serial PRIMARY KEY ,
    name VARCHAR(60) not null
    );
insert into genre values (1,'Рэп');
insert into genre values (2,'Поп музыка'); 
insert into genre values (3,'Джаз');
insert into genre values (4,'Рок музыка'); 
insert into genre values (5,'Шансон');
insert into genre values (6,'Country music');
insert into genre values (7,'Классическая музыка');
insert into genre values (8,'Heavy metall');


create table if not exists genre_artist
(
    genre_id INTEGER references genre(id_g),
    artist_id INTEGER references artist(id_a),
    constraint pk primary key (genre_id,artist_id)
   );
insert into genre_artist values (1,2);
insert into genre_artist values (2,3);
insert into genre_artist values (3,2);
insert into genre_artist values (4,1);
insert into genre_artist values (6,2);
insert into genre_artist values (8,3);
insert into genre_artist values (7,4);




create table if not exists album 
(
    id_al serial PRIMARY KEY ,
    title VARCHAR(60) not null,
    year VARCHAR(60) not null
    );
insert into album values (1,'Все мы реперы','2024');
insert into album values (2,'Погода в доме','2019'); 
insert into album values (3,'Джаз и не только','2022');
insert into album values (4,'Поём все вместе','2021'); 
insert into album values (5,'Sergant','1962');
insert into album values (6,'Wind','2020');
insert into album values (7,'Sand','2014');
insert into album values (8,'Conversation','2020');



   
create table if not exists album_artist
(
    album_id INTEGER references album(id_al),
    artist_id INTEGER references artist(id_a),
    constraint pk_1 primary key (album_id,artist_id)
    );
insert into album_artist values (1,5);
insert into album_artist values (2,1);
insert into album_artist values (2,4);
insert into album_artist values (3,2);
insert into album_artist values (4,5);
insert into album_artist values (8,4);
insert into album_artist values (7,3);




create table if not exists sbornik 
(
    id_sb serial PRIMARY KEY ,
    name VARCHAR(60) not null,
    year VARCHAR(60) not null
    );
insert into sbornik values (1,'Сборник 1','2018');
insert into sbornik values (2,'Сборник 2','2019'); 
insert into sbornik values (3,'Сборник 3','2022');
insert into sbornik values (4,'Сборник 4','2021'); 
insert into sbornik values (5,'Сборник 5','2023');
insert into sbornik values (6,'Сборник 6','2020');
insert into sbornik values (7,'Сборник 7','1978');
insert into sbornik values (8,'Сборник 8','2016');



   
create table if not exists song 
(
    id_s serial PRIMARY KEY ,
    name VARCHAR(60) not null,
    year VARCHAR(60) not null,
    album INTEGER not null,
    duration_sec INTEGER not null,
    foreign key (album) references album(id_al)
    );
insert into song values (1,'Старый отель','1992',2,345);
insert into song values (2,'Сансара','2016',1,436); 
insert into song values (3,'В ресторане','2013',1,245);
insert into song values (4,'Замыкая круг','2020',5,465); 
insert into song values (5,'Колыма','2002',4,222);
insert into song values (6,'Босоногий мальчик','2021',1,340); 
insert into song values (7,'Желтые ботинки','1994',2,123);
insert into song values (8,'My own','1999',2,358);
insert into song values (9,'Own my','1994',7,123);
insert into song values (10,'My','2020',8,300);
insert into song values (11,'Oh my God','1994',6,374);
insert into song values (12,'Myself dear','2014',3,420);
insert into song values (13,'Myself','2020',5,400);
insert into song values (14,'Bemy self','2016',3,368);
insert into song values (15,'Myself by','2019',6,385);
insert into song values (16,'Beemy','1995',8,500);
insert into song values (17,'Premyne','2001',3,410);



create table if not exists sbornik_song
(
    sbornik_id INTEGER references sbornik(id_sb),
    song_id INTEGER references song(id_s),
    constraint pk_2 primary key (sbornik_id,song_id)
    );
insert into sbornik_song values (1,3); 
insert into sbornik_song values (2,5); 
insert into sbornik_song values (5,2);
insert into sbornik_song values (6,17);
insert into sbornik_song values (4,14);
insert into sbornik_song values (3,12);
insert into sbornik_song values (7,10);










