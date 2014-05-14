---
--- Copyright 2014 Okapi Communications Ltd
---
--- This file is free software, or free data depending on how you prefer to
--- look at it. You may use the CREATE, SELECT and ALTER statements as free
--- software under the terms of the GNU GPL Version 3 or later, and INSERT
--- and DELETE statements under the ODBL
--- 
BEGIN TRANSACTION;
INSERT INTO cable_type (name, cost) VALUES
	('Armoured 1.5mm 3-core', 1),
	('OS1 4-core SWA', 4),
	('CAT5 Ethernet, shielded', 0.36);
COMMIT;
