SELECT cell.name AS "cellName"
FROM cell LEFT OUTER JOIN router ON router.site = cell.id
WHERE router.id IS NULL
ORDER BY cell.name;
