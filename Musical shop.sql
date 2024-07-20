

   
create table if not exists artist 
(
    id serial PRIMARY KEY ,
    name VARCHAR(60) not null
    );
  
create table if not exists genre 
(
    id serial PRIMARY KEY ,
    name VARCHAR(60) not null
    );
create table if not exists genre_artist
(
    genre_id INTEGER references genre(id),
    artist_id INTEGER references artist(id),
    constraint pk primary key (genre_id,artist_id)
    );
create table if not exists album 
(
    id serial PRIMARY KEY ,
    title VARCHAR(60) not null,
    year VARCHAR(60) not null
    );
create table if not exists album_artist
(
    album_id INTEGER references album(id),
    artist_id INTEGER references artist(id),
    constraint pk_1 primary key (album_id,artist_id)
    );
create table if not exists sbornik 
(
    id serial PRIMARY KEY ,
    name VARCHAR(60) not null,
    year VARCHAR(60) not null
    );
   
create table if not exists song 
(
    id serial PRIMARY KEY ,
    name VARCHAR(60) not null,
    year VARCHAR(60) not null,
    album INTEGER,
    foreign key (album) references album(id)
    );
create table if not exists sbornik_song
(
    sbornik_id INTEGER references sbornik(id),
    song_id INTEGER references song(id),
    constraint pk_2 primary key (sbornik_id,song_id)
    );