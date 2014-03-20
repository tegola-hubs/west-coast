---
--- Copyright 2014 Okapi Communications Ltd
---
--- This file is free software, or free data depending on how you prefer to
--- look at it. You may use the CREATE, SELECT and ALTER statements as free
--- software under the terms of the GNU GPL Version 3 or later, and INSERT
--- and DELETE statements under the ODBL
--- 
BEGIN TRANSACTION;
DROP VIEW IF EXISTS ptp;
DROP VIEW IF EXISTS antenna_map;
DROP VIEW IF EXISTS cell_list;
DROP VIEW IF EXISTS cell;
DROP TABLE IF EXISTS cabling;
DROP TABLE IF EXISTS cable_type;
DROP TABLE IF EXISTS bom;
DROP TABLE IF EXISTS router;
DROP TABLE IF EXISTS router_type;
DROP TABLE IF EXISTS beam;
DROP TABLE IF EXISTS radio;
DROP TABLE IF EXISTS radio_type;
DROP TABLE IF EXISTS antenna;
DROP TABLE IF EXISTS antenna_type;
DROP TABLE IF EXISTS mast;
DROP TABLE IF EXISTS mast_type;
DROP TABLE IF EXISTS site;
DROP TABLE IF EXISTS network;
COMMIT;
