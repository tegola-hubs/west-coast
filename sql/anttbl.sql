---
--- Copyright 2014 Okapi Communications Ltd
---
--- This file is free software, or free data depending on how you prefer to
--- look at it. You may use the CREATE, SELECT and ALTER statements as free
--- software under the terms of the GNU GPL Version 3 or later, and INSERT
--- and DELETE statements under the ODBL
--- 
BEGIN TRANSACTION;
INSERT INTO antenna_type (name, frequency, frequency_lower, frequency_upper, antenna_data_file_H, antenna_data_file_V) VALUES
('AG-2G16', 2450, 2350, 2550, 'AG-2G16', 'AG-2G16'),
('AG-2G16U', 2450, 2350, 2550, 'AG-2G16U', 'AG-2G16U'),
('AG-2G20', 2450, 2350, 2550, 'AG-2G20', 'AG-2G20'),
('AG-5G23', 5650, 5450, 5850, 'AG-5G23', 'AG-5G23'),
('AG-5G27', 5650, 5450, 5850, 'AG-5G27', 'AG-5G27'),
('AM-2G15-120', 2450, 2350, 2550, 'AM-2G15-120-Hpol', 'AM-2G15-120-Vpol'),
('AM-2G16-90', 2450, 2350, 2550, 'AM-2G16-90-Hpol', 'AM-2G16-90-Vpol'),
('AM-3G18-120', 3550, 3400, 3700, 'AM-3G18-120-Hpol', 'AM-3G18-120-Vpol'),
('AM-5G16-120', 5650, 5450, 5850, 'AM-5G16-120-Hpol', 'AM-5G16-120-Vpol'),
('AM-5G17-90', 5650, 5450, 5850, 'AM-5G17-90-Hpol', 'AM-5G17-90-Vpol'),
('AM-5G19-120', 5650, 5450, 5850, 'AM-5G19-120-Hpol', 'AM-5G19-120-Vpol'),
('AM-5G20-90', 5650, 5450, 5850, 'AM-5G20-90-Hpol', 'AM-5G20-90-Vpol'),
('AM-9G15-90', 915, 902, 928, 'AM-9G15-90-Hpol', 'AM-9G15-90-Vpol'),
('AMO-2G10', 2450, 2350, 2550, 'AMO-2G10-Hpol', 'AMO-2G10-Vpol'),
('AMO-2G13', 2450, 2350, 2550, 'AMO-2G13-Hpol', 'AMO-2G13-Vpol'),
('AMO-5G10', 5650, 5450, 5850, 'AMO-5G10-Hpol', 'AMO-5G10-Vpol'),
('AMO-5G13', 5650, 5450, 5850, 'AMO-5G13-Hpol', 'AMO-5G13-Vpol'),
('AMY-9M16', 915, 902, 928, 'AMY-9M16-Hpol', 'AMY-9M16-Vpol'),
('LOCOM2', 2450, 2350, 2550, 'LOCOM2-Hpol', 'LOCOM2-Vpol'),
('LOCOM5', 5650, 5450, 5850, 'LOCOM5-Hpol', 'LOCOM5-Vpol'),
('LOCOM9', 915, 902, 928, 'LOCOM9-Hpol', 'LOCOM9-Vpol'),
('NB-2G18', 2450, 2350, 2550, 'NB-2G18-Hpol', 'NB-2G18-Vpol'),
('NB-5G22', 5650, 5450, 5850, 'NB-5G22-Hpol', 'NB-5G22-Vpol'),
('NB-5G25', 5650, 5450, 5850, 'NB-5G25-Hpol', 'NB-5G25-Vpol'),
('NBM3', 3550, 3400, 3700, 'NBM3-Hpol', 'NBM3-Vpol'),
('NBM9', 915, 902, 928, 'NBM9-Hpol', 'NBM9-Vpol'),
('NSM2', 2450, 2350, 2550, 'NSM2-Hpol', 'NSM2-Vpol'),
('NSM3', 3550, 3400, 3700, 'NSM3-Hpol', 'NSM3-Vpol'),
('NSM5', 5650, 5450, 5850, 'NSM5-Hpol', 'NSM5-Vpol'),
('NSM9', 915, 902, 928, 'NSM9-Hpol', 'NSM9-Vpol'),
('PBM10', 10448, 10322, 10574, 'PBM10-Hpol', 'PBM10-Vpol'),
('PBM3', 3550, 3400, 3700, 'PBM3-Hpol', 'PBM3-Vpol'),
('PBM5', 5650, 5450, 5850, 'PBM5-Hpol', 'PBM5-Vpol'),
('RD-2G23', 2450, 2350, 2550, 'RD-2G23-Hpol', 'RD-2G23-Vpol'),
('RD-3G25', 3550, 3400, 3700, 'RD-3G25-Hpol', 'RD-3G25-Vpol'),
('RD-5G30', 5650, 5450, 5850, 'RD-5G30-Hpol', 'RD-5G30-Vpol'),
('RD-5G34', 5650, 5450, 5850, 'RD-5G34-Hpol', 'RD-5G34-Vpol');
COMMIT;
