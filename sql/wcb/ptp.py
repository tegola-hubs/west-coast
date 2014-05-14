import sys
import csv
import subprocess

network = 'WCB'
rows = []
for a, b, ant, xmit, cat in csv.reader(sys.stdin, delimiter="|"):
    bearing, elevation = subprocess.check_output(["o.bearing", a, b]).strip().split()
    rows.append("""
((SELECT id FROM site WHERE name='%(a)s' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM site WHERE name='%(b)s' AND network=(SELECT id FROM network WHERE name='WCB')),
 (SELECT id FROM antenna_type WHERE name='%(ant)s'),
 '%(a)s-%(b)s-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='%(a)s' AND network=(SELECT id FROM network WHERE name='WCB')) ||
    ' to ' ||
    (SELECT description FROM site WHERE name='%(b)s' AND network=(SELECT id FROM network WHERE name='WCB')),
    %(xmit)s, 3, %(bearing)s, %(elevation)s, %(cat)s)\
""" % { "a": a, "b": b , "xmit": xmit, "ant": ant, "bearing": bearing, "elevation": elevation, "cat": cat })

print """
BEGIN TRANSACTION;
INSERT INTO antenna (cell, ptp, type, name, description, transmit_power, height_agl, beam_direction, mechanical_tilt, cat)
VALUES
"""

print ",\n".join(rows) + ";"
print "COMMIT;"



