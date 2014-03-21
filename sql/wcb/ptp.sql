
BEGIN TRANSACTION;
INSERT INTO antenna (cell, ptp, type, name, description, transmit_power, height_agl, beam_direction, mechanical_tilt)
VALUES


((SELECT id FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='ALC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'MHC-ALC-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='ALC' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 127.920848841, 6.31283646582),

((SELECT id FROM site WHERE name='ALC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'ALC-MHC-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='ALC' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 127.920848841, -6.46001267803),

((SELECT id FROM site WHERE name='ALC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='MCA' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'ALC-MCA-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='ALC' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MCA' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 105.430966169, -0.101199596347),

((SELECT id FROM site WHERE name='MCA' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='ALC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'MCA-ALC-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MCA' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='ALC' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 105.430966169, 0.0864889305524),

((SELECT id FROM site WHERE name='MCB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='EIX' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'MCB-EIX-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MCB' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='EIX' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 96.0367175789, -0.0366987468464),

((SELECT id FROM site WHERE name='EIX' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='MCB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'EIX-MCB-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='EIX' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MCB' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 96.0367175789, 0.0341590412792),

((SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'EIG-MAH-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 49.9462602923, -0.0080077958267),

((SELECT id FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'MAH-EIG-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MAH' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 49.9462602923, 0.00707355699427),

((SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'EIG-GLB-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 42.850920961, 0.158673364677),

((SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'GLB-EIG-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 42.850920961, -0.158673364677),

((SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='RAS' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'GLB-RAS-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='RAS' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 140.251718139, -0.307762024759),

((SELECT id FROM site WHERE name='RAS' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'RAS-GLB-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='RAS' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='GLB' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 140.251718139, 0.307762024759),

((SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'EIG-KLE-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 95.0450506455, 0.234632203745),

((SELECT id FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'KLE-EIG-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='EIG' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 95.0450506455, -0.236072348523),

((SELECT id FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'KLE-MHC-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 106.183269742, -1.76080514864),

((SELECT id FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='HP3'),
 'MHC-KLE-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='MHC' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='KLE' AND network=(SELECT id FROM network WHERE name='WCB')),
    27, 3, 106.183269742, 1.76080514864);
COMMIT;
