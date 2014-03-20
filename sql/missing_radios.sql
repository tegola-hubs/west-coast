---
--- Copyright 2014 Okapi Communications Ltd
---
--- This file is free software, or free data depending on how you prefer to
--- look at it. You may use the CREATE, SELECT and ALTER statements as free
--- software under the terms of the GNU GPL Version 3 or later, and INSERT
--- and DELETE statements under the ODBL
--- 
SELECT
	cell.name AS "cellName", antenna.name AS "antennaName"
FROM
	antenna LEFT OUTER JOIN radio ON radio.antenna = antenna.id
	JOIN cell ON antenna.cell = cell.id
WHERE radio.antenna IS NULL
ORDER BY cell.name, antenna.name;
