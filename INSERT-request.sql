 -- /Имена групп
insert into artists(artists_name)
values('Sebastian Bach');

insert into artists(artists_name)
values('Ziver');

insert into artists(artists_name)
values('Linkin Park');

insert into artists(artists_name)
values('Mikhail Krug');

insert into artists(artists_name)
values('Queen';)

insert into artists(artists_name)
values('Deff Lepard');

insert into artists(artists_name)
values('Ramshtain')

insert into artists(artists_name)
values('ABBA')

 -- /Название жанров
insert into genres(name)
values('POP');

insert into genres(name)
values('Rock');

insert into genres(name)
values('Classic');

insert into genres(name)
valued('Chanson');

 -- /Название альбомов
insert into albums(name, release_date)
values('Rose','2010.04.08');

insert into albums(name, release_date)
values('Year_of_release','2019.05.23');

insert into albums(name, release_date)
values('Life','2008.07.23');

insert into albums(name, release_date)
values('The_Best','2008.04.04');

insert into albums(name, release_date)
values('Meteora','1998.10.11');

insert into albums(name, release_date)
values('Little_Boss','2010.05.22');

insert into albums(name, release_date)
values('Country','1999.09.23');

 -- /Название треков
insert into tracks(name, duration, albums_id)
values('Note', 3.54, 1);

insert into tracks(name, duration, albums_id)
values('Shadow', 3.44, 7);

insert into tracks(name, duration, albums_id)
values('Green Tree', 4.12, 2);

insert into tracks(name, duration, albums_id)
values('Next', 3.56, 6);

insert into tracks(name, duration, albums_id)
values('To Do', 4.34, 3);

insert into tracks(name, duration, albums_id)
values('Hot & Cool', 3.44, 5);

insert into tracks(name, duration, albums_id)
values('Life Book', 4.04, 4);

insert into tracks(name, duration, albums_id)
values('Pinks Midi', 3.49, 1);

insert into tracks(name, duration, albums_id)
values('Dark Days', 4.10, 7);

insert into tracks(name, duration, albums_id)
values('Aplles in Gus', 5.05, 2);

insert into tracks(name, duration, albums_id)
values('No SuSan', 4.32, 6);

insert into tracks(name, duration, albums_id)
values('Hunter to Netologi', 3.50, 1)

 -- /Название коллекций
insert into collections(name, release_date)
values('Greates hits', '2008.04.22');

insert into collections(name, release_date)
values('A cold year', '2017.09,13');

insert into collections(name, release_date)
values('App & All', '2005.12.23');

insert into collections(name, release_date)
values('Gold Collections','2010.04.30');

insert into collection(name,release_date)
values('Sun Beach','2009.08.03');

insert into collection(name, release_date)
values('The Best Music','2012.09.10');

 -- /Присоединение артистов к жанру
insert into artistsgenres(artists_id, genres_id)
values('1', '3');

insert into artistsgenres(artists_id, genres_id)
values('2', '1');

insert into artistsgenres(artists_id, genres_id)
values('3', '2');

insert into artistsgenres(artists_id, genres_id)
values('4','4');

insert into artistsgenres(artists_id, genres_id)
values('5','2');

insert into artistsgenres(artists_id, genres_id)
values('6','2');

insert into artistsgenres(artists_id, genres_id)
values('7','2');

insert into artistsgenres(artists_id, genres_id)
values('8','1');

 -- /Присоединение артистов и альбомов
insert into artistsalbums(artists_id, albums_id)
values(1,5);

insert into artistsalbums(artists_id, albums_id)
values(2,4);

insert into artistsalbums(artists_id, albums_id)
values(3,3);

insert into artistsalbums(artists_id, albums_id)
values(4,2);

insert into artistsalbums(artists_id, albums_id)
values(5,1);