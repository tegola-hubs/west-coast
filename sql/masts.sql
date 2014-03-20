---
--- Copyright 2014 Okapi Communications Ltd
---
--- This file is free software, or free data depending on how you prefer to
--- look at it. You may use the CREATE, SELECT and ALTER statements as free
--- software under the terms of the GNU GPL Version 3 or later, and INSERT
--- and DELETE statements under the ODBL
--- 
BEGIN TRANSACTION;
INSERT INTO mast_type (name) VALUES 
	('Type 0'),
	('Type 1'),
	('Type 2'),
	('Type 3');
COMMIT;
