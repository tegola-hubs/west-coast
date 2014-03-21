---
--- Copyright 2014 Okapi Communications Ltd
---
--- This file is free software, or free data depending on how you prefer to
--- look at it. You may use the CREATE, SELECT and ALTER statements as free
--- software under the terms of the GNU GPL Version 3 or later, and INSERT
--- and DELETE statements under the ODBL
--- 
BEGIN TRANSACTION;
INSERT INTO radio_type (name, integrated, power, cost) VALUES
	('NBM5', TRUE, 5.5, 65),
	('ROCKETM5', FALSE, 8, 65),
	('NSM5', TRUE, 8, 65),
	('LOCOM5', TRUE, 5.5, 46),
	('PTP L6800', FALSE, 71, 2000),
	('PTP U6800', FALSE, 71, 2000),
	('PTP 07800', FALSE, 71, 2000);
COMMIT;
