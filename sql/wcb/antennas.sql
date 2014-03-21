BEGIN TRANSACTION;
INSERT INTO antenna (cell, ptp, type, name, description, transmit_power, height_agl, beam_direction, mechanical_tilt)
VALUES

    ((SELECT id FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
     (SELECT id FROM site WHERE name='ALC' AND network=(SELECT id FROM network WHERE name='WCB')),
         (SELECT id FROM antenna_type WHERE name='HP3'),
         'MHC-ALC-PTP',
         'Point to Point link, Marine Harvest, Caol to Alcan',
         8, 4, 129.11, 3);
COMMIT;
