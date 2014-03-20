---
--- Copyright 2014 Okapi Communications Ltd
---
--- This file is free software, or free data depending on how you prefer to
--- look at it. You may use the CREATE, SELECT and ALTER statements as free
--- software under the terms of the GNU GPL Version 3 or later, and INSERT
--- and DELETE statements under the ODBL
--- 
SELECT cell.name AS "cellName"
FROM cell LEFT OUTER JOIN router ON router.site = cell.id
WHERE router.id IS NULL
ORDER BY cell.name;
