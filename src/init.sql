CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE IF NOT EXISTS contributions(
	id SERIAL PRIMARY KEY,
	ts TIMESTAMP NOT NULL DEFAULT current_timestamp,
	sent_to_osm BOOLEAN NOT NULL DEFAULT false,
	osmid VARCHAR NOT NULL,
	name VARCHAR,
	details VARCHAR,
	language VARCHAR,
	tags JSONB,
	cro_tags JSONB,
	geom GEOMETRY(Point, 4326) NOT NULL
);

CREATE TABLE IF NOT EXISTS poi_cro(
	osmid VARCHAR PRIMARY KEY,
	tags JSONB,
	lastupdate TIMESTAMP NOT NULL DEFAULT current_timestamp
);
