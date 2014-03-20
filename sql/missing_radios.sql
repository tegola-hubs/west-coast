SELECT
	cell.name AS "cellName", antenna.name AS "antennaName"
FROM
	antenna LEFT OUTER JOIN radio ON radio.antenna = antenna.id
	JOIN cell ON antenna.cell = cell.id
WHERE radio.antenna IS NULL
ORDER BY cell.name, antenna.name;
