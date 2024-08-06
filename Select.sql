SELECT name,duration_sec
FROM song
WHERE duration_sec = (
    SELECT max(duration_sec)
    FROM song
);

SELECT name,duration_sec
FROM song
WHERE duration_sec >= 210;

SELECT name,year
FROM sbornik
WHERE year >='2018' and year <= '2020';

SELECT name 
FROM  artist
WHERE length(name) = length(replace(name, ' ', ''));


SELECT name 
FROM  song
WHERE name ilike  '% my' or 
name ilike 'my'
or name ilike 'my %'
or name ilike '% my %';


select name,count(*) from genre g
join genre_artist ga on ga.genre_id = g.id_g
GROUP BY g.name;

select count(id_s) from song s
left join album a on a.id_al = s.album
where a."year" between '2019' and  '2020';

SELECT a.title, round(AVG(duration_sec)) 
FROM song s
JOIN album a  ON s.album = a.id_al 
GROUP BY a.title; 

select name from artist a 
join album_artist aa on a.id_a = aa.artist_id
join album on album.id_al=aa.album_id
where album.year !='2020'
group by a.name;

select sb.name  from sbornik sb
join sbornik_song ss on ss.sbornik_id = sb.id_sb 
join song s2 on s2.album= ss.song_id 
join album al on al.id_al=s2.album
join album_artist aa on aa.album_id =al.id_al
join artist a on a.id_a = aa.artist_id
where a.name='Баста'
group by sb.name;