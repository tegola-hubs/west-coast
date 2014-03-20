UPDATE site SET geom = ST_GeomFromText('POINT(' || x || ' ' || y || ')', 27700);
