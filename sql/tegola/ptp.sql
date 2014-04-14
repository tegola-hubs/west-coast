
BEGIN TRANSACTION;
INSERT INTO antenna (cell, ptp, type, name, description, transmit_power, height_agl, beam_direction, mechanical_tilt)
VALUES


((SELECT id FROM site WHERE name='COR'),
 (SELECT id FROM site WHERE name='MAH'),
 (SELECT id FROM antenna_type WHERE name='AF24'),
 'COR-MAH-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='COR') ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MAH'),
    33, 3, 118.348832224, 1.72668103099),

((SELECT id FROM site WHERE name='MAH'),
 (SELECT id FROM site WHERE name='COR'),
 (SELECT id FROM antenna_type WHERE name='AF24'),
 'MAH-COR-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MAH') ||
    ' to ' ||
    (SELECT description FROM site WHERE name='COR'),
    33, 3, 118.348832224, -1.76552087125);
COMMIT;
