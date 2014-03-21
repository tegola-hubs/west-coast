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
INSERT INTO antenna_type (name, frequency, frequency_lower, frequency_upper, cost)
VALUES
       -- Dishes for Cambium point to point radios in L6 and U6
       -- http://www.winncom.com/en/products/f-165-175/dish.aspx
       ('PAR6', 6175, 5925, 6425, 2325),
       ('PAR8', 6175, 5925, 6425, 5690),
       ('HP3',  6525, 5925, 7125, 1130),
       ('HP4', 6525, 5925, 7125, 2635);
COMMIT;
