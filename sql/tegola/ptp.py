import sys
import csv
import subprocess

network = 'WCB'
rows = []
for a, b, ant, xmit in csv.reader(sys.stdin, delimiter="|"):
    bearing, elevation = subprocess.check_output(["o.bearing", network, a, b]).strip().split()
    rows.append("""
((SELECT id FROM site WHERE name='%(a)s'),
 (SELECT id FROM site WHERE name='%(b)s'),
 (SELECT id FROM antenna_type WHERE name='%(ant)s'),
 '%(a)s-%(b)s-PTP',
 'Point to Point: ' || 
    (SELECT description FROM site WHERE name='%(a)s') ||
    ' to ' ||
    (SELECT description FROM site WHERE name='%(b)s'),
    %(xmit)s, 3, %(bearing)s, %(elevation)s)\
""" % { "a": a, "b": b , "xmit": xmit, "ant": ant, "bearing": bearing, "elevation": elevation })

print """
BEGIN TRANSACTION;
INSERT INTO antenna (cell, ptp, type, name, description, transmit_power, height_agl, beam_direction, mechanical_tilt)
VALUES
"""

print ",\n".join(rows) + ";"
print "COMMIT;"



