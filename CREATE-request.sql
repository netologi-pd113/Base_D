CREATE TABLE IF NOT EXISTS genres(
	id SERIAL primary key,
	genres_name VARCHAR(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS artists(
	id SERIAL primary key,
	artists_name VARCHAR (40) NOT NULL
);
CREATE TABLE IF NOT EXISTS artistsgenres(
	id SERIAL primary key,
	artist_id INTEGER NOT NULL REFERENCES artists(id),
	genres_id INTEGER NOT NULL REFERENCES genres(id)
);
CREATE TABLE IF NOT EXISTS albums(
	id SERIAL primary key,
	albums_name VARCHAR(40) NOT NULL,
	release_data DATE NOT NULL
);
CREATE TABLE IF NOT EXISTS artistsalbums(
	id SERIAL primary key,
	artists_id INTEGER NOT NULL REFERENCES artists(id),
	albums_id INTEGER NOT NULL REFERENCES albums(id)
);
CREATE TABLE IF NOT EXISTS tracks(
	id SERIAL primary key,
	tracks_name VARCHAR(40) NOT NULL,
	duration INTEGER NOT NULL,
	albums_id INTEGER NOT NULL REFERENCES albums(id)
);
CREATE TABLE IF NOT EXISTS collections(
	id SERIAL primary key,
	collections_name VARCHAR(40) NOT NULL,
	release_date DATE NOT NULL
);
CREATE TABLE IF NOT EXISTS trackscollections(
	id SERIAL primary key,
	tracks_id INTEGER NOT NULL REFERENCES tracks(id),
	collections_id INTEGER NOT NULL REFERENCES collections(id)
);	