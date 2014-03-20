---
--- Copyright 2014 Okapi Communications Ltd
---
--- This file is free software, or free data depending on how you prefer to
--- look at it. You may use the CREATE, SELECT and ALTER statements as free
--- software under the terms of the GNU GPL Version 3 or later, and INSERT
--- and DELETE statements under the ODBL
--- 
BEGIN TRANSACTION;
ALTER TABLE routes RENAME "desc" to "description";
ALTER TABLE route_points RENAME "desc" to "description";
ALTER TABLE tracks RENAME "desc" to "description";
ALTER TABLE track_points RENAME "desc" to "description";
ALTER TABLE waypoints RENAME "desc" to "description";

ALTER TABLE route_points RENAME "time" to "stamp";
ALTER TABLE track_points RENAME "time" to "stamp";
ALTER TABLE waypoints RENAME "time" to "stamp";
COMMIT;
