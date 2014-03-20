---
--- Copyright 2014 Okapi Communications Ltd
---
--- This file is free software, or free data depending on how you prefer to
--- look at it. You may use the CREATE, SELECT and ALTER statements as free
--- software under the terms of the GNU GPL Version 3 or later, and INSERT
--- and DELETE statements under the ODBL
--- 
BEGIN TRANSACTION;
INSERT INTO router_type (name, power, cost) VALUES
	('Mikrotik RouterBoard 2011UiAS-IN', 15, 85),
	('Mikrotik RouterBoard 2011L-IN', 8, 72),
	('Mikrotik RouterBoard 750UP', 6, 43),
	('Mikrotik RouterBoard 750G', 6, 43),
	('Mikrotik RouterBoard 951-2n', 3, 32),
	('Mikrotik RouterBoard 951Ui-2HnD', 7, 43),
	('Mikrotik RouterBoard 951G-2HnD', 7, 57);
COMMIT;
