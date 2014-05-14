
BEGIN TRANSACTION;
INSERT INTO antenna (cell, ptp, type, name, description, transmit_power, height_agl, beam_direction, mechanical_tilt, cat)
VALUES


((SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'EIG-MAH-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 49.9462602923, -0.0080077958267, 3),

((SELECT id FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'MAH-EIG-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 49.9462602923, 0.00707355699427, 3),

((SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'EIG-GLB-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 42.932682001, 0.175483044567, 3),

((SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'GLB-EIG-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 42.932682001, -0.175483044567, 3),

((SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='RAS' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'GLB-RAS-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='RAS' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 320.201541981, -0.332654359048, 3),

((SELECT id FROM site WHERE name='RAS' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'RAS-GLB-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='RAS' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 140.201541981, 0.334333545402, 3),

((SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'EIG-RAN-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 93.9890111032, 0.163889398965, 3),

((SELECT id FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'RAN-EIG-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 273.989011103, -0.165494727047, 3),

((SELECT id FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'RAN-MHC-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 102.521778485, -0.723108023585, 3),

((SELECT id FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'MHC-RAN-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 282.521778485, 0.723108023585, 3),

((SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='MAI' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'EIG-MAI-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MAI' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 0.420551767828, 0.0610528444502, 4),

((SELECT id FROM site WHERE name='MAI' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'MAI-EIG-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MAI' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 0.420551767828, -0.0610528444502, 4),

((SELECT id FROM site WHERE name='MAI' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='OBN' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'MAI-OBN-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MAI' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='OBN' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 121.999200333, -0.683795005153, 4),

((SELECT id FROM site WHERE name='OBN' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='MAI' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'OBN-MAI-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='OBN' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MAI' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 301.999200333, 0.310035965249, 4),

((SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='KYL' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='RD-5G30'),
 'GLB-KYL-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='KYL' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 309.118834452, -2.98982640622, 4),

((SELECT id FROM site WHERE name='KYL' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='RD-5G30'),
 'KYL-GLB-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='KYL' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 129.118834452, 3.00218084095, 4),

((SELECT id FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='SMO' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='RD-5G30'),
 'MAH-SMO-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='SMO' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 66.7583257587, -0.725289658602, 2),

((SELECT id FROM site WHERE name='SMO' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='RD-5G30'),
 'SMO-MAH-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='SMO' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 66.7583257587, 0.724920792634, 2),

((SELECT id FROM site WHERE name='CGD' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='SMO' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='RD-5G30'),
 'CGD-SMO-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='CGD' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='SMO' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 306.157745076, -0.646355602512, 2),

((SELECT id FROM site WHERE name='SMO' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='CGD' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='RD-5G30'),
 'SMO-CGD-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='SMO' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='CGD' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 126.157745076, 0.646355602512, 2),

((SELECT id FROM site WHERE name='CGD' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='RD-5G30'),
 'CGD-EIG-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='CGD' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 58.8545857809, 0.177485718137, 2),

((SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='CGD' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='RD-5G30'),
 'EIG-CGD-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='CGD' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 58.8545857809, -0.177485718137, 2);
COMMIT;
