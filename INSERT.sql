insert into Artist (name)
values 
('Rammstein'), 
('Slipknot'), 
('Linkin Park'),
('Madonna'),
('Eminem'),
('Red Hot Chili Peppers'),
('Rihanna'),
('Scorpions'),
('Britney Spears'),
('Queen'),
('Kiss');

insert into MusicGenre (name)
values 
('индастриал-метал'),
('электронный индастриал'),
('альтернативный метал'),
('ню-метал'),
('метал'),
('электроник-рок'),
('рэп-рок'),
('поп-музыка'),
('хип-хоп'),
('фанк-метал'),
('рок'),
('хард-рок'),
('данс-поп'),
('прогрессивный поп'),
('диско');

insert into Album (name, year_release)
values
('Mutter', '2001'),
('Reise, Reise', '2004'),
('Iowa', '2001'),
('All Hope Is Gone', '2008'),
('Hybrid Theory', '2000'),
('Meteora', '2003'),
('American Life', '2003'),
('E', '2004'),
('The Shady Project', '2011'),
('Californication', '1999'),
('By the Way', '2002'),
('The Woman in Black', '2011'),
('Anti', '2018'),
('Animal Magnetism', '1980'),
('Savage Amusement', '1988'),
('…Baby One More Time', '1999'),
('Oops!… I Did It Again', '2000'),
('A Night at the Opera', '1975'),
('News of the World', '1977'),
('Hot in the Shade', '1989'),
('Revenge', '1992'),
('The Party''s Right Here', 2019);

insert into Album (name, year_release)
values
('The Party''s Right Here', 2019);

insert into Track (name, duration, album_id)
values 
('Feuer frei!', '189', 1),
('Keine Lust', '223', 2),
('My Plague', '220', 3),
('Psychosocial', '284', 4),
('In the End', '212', 5),
('Numb', '188', 6),
('Hollywood', '265', 7),
('Love Profusion', '216', 7),
('My Name', '272', 8),
('Fly Away', '305', 9),
('Californication', '321', 10),
('Can ''t Stop', '269', 11),
('Don ''t Stop the Music', '247', 12),
('Needed Me', '185', 13),
('Hold Me Tight', '240', 14),
('Rhythm of Love', '228', 15),
('…Baby One More Time', '211', 16),
('Oops!...I Did It Again', '212', 17),
('Bohemian Rhapsody', '354', 18),
('We Are the Champions', '181', 19),
('Prisoner of Love', '225', 20),
('Every Time I Look At You', '279', 21);

insert into Track (name, duration, album_id)
values 
('Sooner Or Later (Live)', '211', 22);

insert into Collection (name, year_release)
values 
('Live in Moscow', '2002'),
('Live in Paris', '2012'),
('Antennas to Hell', '2012'),
('Songs from the Underground', '2008'),
('Celebration', '2009'),
('Shady XV', '2014'),
('Greatest Hits', '2003'),
('The Best of Pop', '2018'),
('Scorpions Gold', '2006'),
('The Singles Collection', '2009'),
('Queen Rocks', '1997'),
('Kiss Alive! 1975-2000', '2006');

insert into AlbumArtist (album_id, artist_id)
values
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 5),
(9, 5),
(10, 6),
(11, 6),
(12, 7),
(13, 7),
(14, 8),
(15, 8),
(16, 9),
(17, 9),
(18, 10),
(19, 10),
(20, 11),
(21, 11);

insert into ArtistMusicGenre (artist_id, musicgenre_id)
values
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 12),
(3, 6),
(3, 7),
(3, 11),
(4, 8),
(4, 9),
(4, 13),
(5, 8),
(5, 9),
(6, 10),
(6, 11),
(6, 12),
(7, 8),
(7, 9),
(8, 11),
(9, 8),
(9, 13),
(10, 11),
(10, 13),
(10, 15),
(11, 11),
(11, 12);

insert into TrackCollection (track_id, collection_id)
values
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 3),
(5, 4),
(6, 4),
(7, 5),
(8, 5),
(9, 6),
(10, 6),
(11, 7),
(12, 7),
(13, 8),
(14, 8),
(7, 8),
(8, 8),
(17, 8),
(18, 8),
(15, 9),
(16, 9),
(17, 10),
(18, 10),
(19, 11),
(20, 11),
(21, 12),
(22, 12);





