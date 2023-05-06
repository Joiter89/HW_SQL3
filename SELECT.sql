-- 1 Количество исполнителей в каждом жанре

select m.name, count(ar.name) from musicgenre m
join artistmusicgenre am on m.id = am.musicgenre_id 
join artist ar on am.artist_id = ar.id 
group by m.name

--2 кол-во треков, вошедщих в альбомы 2019-2020

select count(t.id) from track t 
join album al on t.album_id = al.id 
where al.year_release between 2019 and 2020;

-- 3 средняя продолжительность треков по каждому альбому

select al.name, avg(t.duration) from album al
join track t on al.id = t.album_id
group by al.name;

-- 4 все исполнители, которые не выпустили альбомы в 2020 году

select name from artist ar
where name not in (select ar.name from artist ar
join albumartist aa on ar.id = aa.artist_id
join album al on aa.album_id = al.id
where al.year_release = 2020);

-- 5 названия сборников, в которых присутствует конкретный исполнитель

select c.name from collection c 
join trackcollection tc on tc.collection_id = c.id
join album al on al.id = c.id
join albumartist aa on aa.album_id = al.id 
join artist ar on ar.id = aa.artist_id 
where ar.name = 'Slipknot';

-- 6 названия альбомов, в которых присутствуют исполнители более чем одного жанра

select distinct(al.name) from album al
join albumartist aa on al.id = aa.album_id 
join artist ar on aa.artist_id = ar.id 
join artistmusicgenre am on ar.id = am.artist_id 
group by al.name, ar.id 
having count(am.musicgenre_id) > 1;

-- 7 наименования треков, которые не входят в сборники

select t.name from track t
left join trackcollection tc on t.id = tc.track_id 
where tc.track_id is null;

-- 8 исполнитель или исполнители, написавшие самый короткий по продолжительности трек

select ar.name from artist ar 
join albumartist aa on ar.id = aa.artist_id
join album al on aa.album_id = al.id
join track t on al.id = t.album_id 
where duration = (select min(duration) from track);

-- 9 названия альбомов, содержащих наименьшее количество треков

select al.name from album al
join track t on al.id = t.album_id 
group by al.name
having count(t.name) = (select count(t.name) from track t
join album al on t.album_id = al.id
group by al.name
order by count(t.name)
limit 1);
