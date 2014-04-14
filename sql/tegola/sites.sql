---
--- Copyright 2014 Okapi Communications Ltd
---
--- This file is free software, or free data depending on how you prefer to
--- look at it. You may use the CREATE, SELECT and ALTER statements as free
--- software under the terms of the GNU GPL Version 3 or later, and INSERT
--- and DELETE statements under the ODBL
--- 
BEGIN TRANSACTION;
CREATE TEMPORARY TABLE sites_tmp (
	name VARCHAR(128),
	lat FLOAT,
	lon FLOAT,
	description TEXT
);
COPY sites_tmp FROM :sites WITH DELIMITER '|';

-- Now that we've got our data in, add a column with the WKT representation
-- which looks like POINT(x y). This is used below.
ALTER TABLE sites_tmp ADD wkt VARCHAR(128);
UPDATE sites_tmp SET wkt='POINT(' || lon || ' ' || lat || ')';

-- This is slightly tortured because we are keeping our data in WGS84 
-- lat/lon (which has a standard spatial reference ID of 4326) and the
-- GIS system uses the much better OSGB36 coordinates (SRID 27700). So
-- We have to transform them
--
-- Note that the meaning of "iscell" is "a thing with radios on it".
-- That column is what causes viewsheds and such to be calculated.
INSERT INTO site (name, description, iscell, x, y, network)
	(SELECT
		name, description, TRUE,
		ST_X(ST_Transform(ST_GeomFromText(wkt, 4326), 27700)),
		ST_Y(ST_Transform(ST_GeomFromText(wkt, 4326), 27700)),
		(SELECT id FROM network WHERE name='WCB')
	 FROM sites_tmp);

-- We don't need to worry about updating the geometry column on the
-- site table here because that's done later on after all sites have 
-- been loaded
COMMIT; 
