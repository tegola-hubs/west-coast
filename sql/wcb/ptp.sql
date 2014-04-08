
BEGIN TRANSACTION;
INSERT INTO antenna (cell, ptp, type, name, description, transmit_power, height_agl, beam_direction, mechanical_tilt)
VALUES


((SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'EIG-MAH-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 49.9462602923, -0.0118796059775),

((SELECT id FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'MAH-EIG-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 49.9462602923, 0.00520566559607),

((SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'EIG-GLB-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 42.850920961, 0.14867998668),

((SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'GLB-EIG-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 42.850920961, -0.14867998668),

((SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='RAS' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'GLB-RAS-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='RAS' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 140.251718139, -0.292618181656),

((SELECT id FROM site WHERE name='RAS' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'RAS-GLB-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='RAS' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 140.251718139, 0.290262479097),

((SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'EIG-KLE-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 95.0450506455, 0.231508028036),

((SELECT id FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'KLE-EIG-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 95.0450506455, -0.231508028036),

((SELECT id FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'KLE-MHC-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 106.183269742, -1.748294457),

((SELECT id FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'MHC-KLE-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 106.183269742, 1.74546267078),

((SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'EIG-RAN-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 94.1237468611, 0.0700240877746),

((SELECT id FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'RAN-EIG-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 94.1237468611, -0.0700240877746),

((SELECT id FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'RAN-MHC-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 102.333290141, -0.583080421147),

((SELECT id FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'MHC-RAN-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='RAN' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 102.333290141, 0.583080421147);
COMMIT;
