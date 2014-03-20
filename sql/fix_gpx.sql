ALTER TABLE routes RENAME "desc" to "description";
ALTER TABLE route_points RENAME "desc" to "description";
ALTER TABLE tracks RENAME "desc" to "description";
ALTER TABLE track_points RENAME "desc" to "description";
ALTER TABLE waypoints RENAME "desc" to "description";

ALTER TABLE route_points RENAME "time" to "stamp";
ALTER TABLE track_points RENAME "time" to "stamp";
ALTER TABLE waypoints RENAME "time" to "stamp";
