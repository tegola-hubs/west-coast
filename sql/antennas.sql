---
--- Copyright 2014 Okapi Communications Ltd
---
--- This file is free software, or free data depending on how you prefer to
--- look at it. You may use the CREATE, SELECT and ALTER statements as free
--- software under the terms of the GNU GPL Version 3 or later, and INSERT
--- and DELETE statements under the ODBL
--- 
BEGIN TRANSACTION;
UPDATE antenna_type SET cost=95 WHERE name='RD-5G30';
UPDATE antenna_type SET cost=105 WHERE name='AM-5G19-120';
UPDATE antenna_type SET cost=65 WHERE name='AM-5G16-120';
UPDATE antenna_type SET cost=105 WHERE name='AM-5G20-90';
UPDATE antenna_type SET cost=65 WHERE name='AM-5G17-90';
COMMIT;