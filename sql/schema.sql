---
--- Copyright 2014 Okapi Communications Ltd
---
--- This file is free software, or free data depending on how you prefer to
--- look at it. You may use the CREATE, SELECT and ALTER statements as free
--- software under the terms of the GNU GPL Version 3 or later, and INSERT
--- and DELETE statements under the ODBL
--- 
BEGIN TRANSACTION;
CREATE TABLE network (
	id		SERIAL PRIMARY KEY,
	name		VARCHAR(128),
	description	TEXT,
	subscribers	INTEGER NOT NULL DEFAULT 100,
	UNIQUE(name)
);

CREATE TABLE site (
	id		SERIAL PRIMARY KEY,
	network		INTEGER REFERENCES network(id),
	name		VARCHAR(128),
	description	TEXT,
	x		DOUBLE PRECISION,
	y		DOUBLE PRECISION,
	iscell		BOOLEAN DEFAULT TRUE,
	UNIQUE(network, name)
);
SELECT AddGeometryColumn('public', 'site', 'geom', 27700, 'POINT', 2);

CREATE TABLE mast_type (
	id		SERIAL PRIMARY KEY,
	name		VARCHAR(128) NOT NULL,
	UNIQUE(name)
);

CREATE TABLE mast (
	id		SERIAL PRIMARY KEY,
	site		INTEGER REFERENCES site(id) NOT NULL,
	type		INTEGER REFERENCES mast_type(id) NOT NULL
);
SELECT AddGeometryColumn('public', 'mast', 'geom', 27700, 'POLYGON', 2);

CREATE TABLE antenna_type (
	id			SERIAL PRIMARY KEY,
	name			VARCHAR(32),
	description		TEXT,
	frequency		SMALLINT,
	frequency_lower		SMALLINT,
	frequency_upper		SMALLINT,
	electrical_tilt		SMALLINT DEFAULT 0,
	antenna_data_file_H	VARCHAR(256),
	antenna_data_file_V	VARCHAR(256),
	technology		VARCHAR(256),
	cost			FLOAT DEFAULT 0.0
);

CREATE TABLE antenna (
	id			SERIAL PRIMARY KEY,
	type			INTEGER REFERENCES antenna_type(id) NOT NULL,
	cell			INTEGER REFERENCES site(id) NOT NULL,
	name			VARCHAR(128) NOT NULL,
	description		TEXT,
	transmit_power		SMALLINT DEFAULT 10 NOT NULL,
	beam_direction		SMALLINT NOT NULL,
	mechanical_tilt		SMALLINT DEFAULT 0 NOT NULL,
	height_agl		DOUBLE PRECISION DEFAULT 3.0 NOT NULL,
	ptp			INTEGER REFERENCES site(id),
	UNIQUE(cell, name)
);

CREATE VIEW cell AS
SELECT id, network, name, description, x, y, geom FROM site WHERE iscell IS TRUE;

CREATE VIEW cell_list AS
SELECT
	site.name AS "cellName",
	antenna.id AS "antennaID",
	antenna.beam_direction AS "beamDirection",
	antenna_type.electrical_tilt AS "electricalTiltAngle",
	antenna.mechanical_tilt AS "mechanicalAntennaTilt",
	antenna.height_agl AS "heightAGL",
	antenna_type.name AS "antennaType",
	site.x::INTEGER AS "positionEast",
	site.y::INTEGER AS "positionNorth",
	antenna.transmit_power AS "power",
	5 AS "radius",
	'hataDEM'::text AS "model",
	'42'::text AS "P1",
	'42'::text AS "P2",
	'-12'::text AS "P3",
	'0.1'::text AS "P4",
	''::text AS "P5",
	''::text AS "P6",
	''::text AS "P7",
	''::text AS "P8",
	''::text AS "P9",
	''::text AS "P10",
	''::text AS "P11"
FROM site JOIN antenna ON site.id = antenna.cell JOIN antenna_type ON antenna.type = antenna_type.id
WHERE iscell IS TRUE AND ptp IS NULL;

CREATE VIEW antenna_map AS
SELECT
	name AS "antennaType",
	frequency AS "frequency",
	frequency_lower AS "frequencyLower",
	frequency_upper AS "frequencyUpper",
	electrical_tilt AS "EDT",
	antenna_data_file_H AS "MSIfilename",
	technology AS "technology"
FROM antenna_type;

CREATE VIEW ptp AS
	SELECT
		c1.id AS c1, c1.name AS c1name,
		c2.id AS c2, c2.name AS c2name,
		a1.id AS a1, a2.id AS a2,
		c1.network AS n1, c2.network AS n2,
		ST_MakeLine(c1.geom, c2.geom) AS geom
	FROM antenna AS a1
		JOIN antenna AS a2 ON a1.ptp = a2.cell AND a2.ptp = a1.cell
		JOIN cell AS c1 ON a1.cell = c1.id
		JOIN cell AS c2 ON a2.cell = c2.id;

CREATE TABLE radio_type (
	id		SERIAL PRIMARY KEY,
	name		VARCHAR(128) NOT NULL,
	integrated	BOOLEAN NOT NULL DEFAULT FALSE,
	power		FLOAT NOT NULL,
	cost		FLOAT NOT NULL,
	UNIQUE(name)
);

CREATE TABLE radio (
	id	SERIAL PRIMARY KEY,
	type	INTEGER REFERENCES radio_type(id) NOT NULL,
	antenna	INTEGER REFERENCES antenna(id) NOT NULL
);

CREATE TABLE router_type (
	id	SERIAL PRIMARY KEY,
	name	VARCHAR(128) NOT NULL,
	power	FLOAT NOT NULL,
	cost	FLOAT NOT NULL,
	UNIQUE(name)
);

CREATE TABLE router (
	id	SERIAL PRIMARY KEY,
	type	INTEGER REFERENCES router_type(id) NOT NULL,
	site	INTEGER REFERENCES site(id) NOT NULL,
	name	VARCHAR(128) NOT NULL
);

CREATE TABLE cable_type (
	id	SERIAL PRIMARY KEY,
	name	VARCHAR(128) NOT NULL,
	cost	FLOAT NOT NULL,
	UNIQUE(name)
);

CREATE TABLE cabling (
	id	SERIAL PRIMARY KEY,
	type	INTEGER NOT NULL REFERENCES cable_type(id),
	a	INTEGER REFERENCES site(id) NOT NULL,
	b	INTEGER REFERENCES site(id) NOT NULL,
	length	FLOAT NOT NULL DEFAULT 0
);
SELECT AddGeometryColumn('public', 'cabling', 'geom', 27700, 'LINESTRING', 2);
COMMIT;
