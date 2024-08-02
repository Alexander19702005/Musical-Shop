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
WHERE year <='2018' and year <= '2020';

SELECT name 
FROM  artist
WHERE length(name) = length(replace(name, ' ', ''));


SELECT name 
FROM  song
WHERE name like '%Мой%' or name like '%my%' or name like 'мой' ;

select name,count(*) from genre g
join genre_artist ga on ga.genre_id = g.id
GROUP BY g.name;

select name,count(*) from song s
left join album a on a.id = s.album
where a."year" <= '2020'
GROUP BY s.name;

select a.id,title,a.year,s.name,s.year,s.duration_sec from album a 
join song s on a.id=s.album; 
WHERE mot distinct title   

select avg(duration_sec) from song s 

