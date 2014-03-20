BEGIN TRANSACTION;
DELETE FROM router WHERE site IN (
	SELECT site.id FROM site
		JOIN network ON site.network = (SELECT id FROM network WHERE name='WCB'));
DELETE FROM radio WHERE antenna IN (
	SELECT antenna.id FROM radio
		JOIN antenna ON radio.antenna = antenna.id
		JOIN cell ON antenna.cell = cell.id
		JOIN network ON cell.network = (SELECT id FROM network WHERE name='WCB'));
DELETE FROM antenna WHERE cell IN (
	SELECT cell.id FROM cell
		JOIN network ON cell.network = (SELECT id FROM network WHERE name='WCB'));
DELETE FROM site WHERE network = (SELECT id FROM network WHERE name='WCB');
DELETE FROM network WHERE name='WCB';
COMMIT;
